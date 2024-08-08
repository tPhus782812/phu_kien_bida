-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2024 at 03:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id_bill` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `avt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id_bill`, `date`, `full_name`, `phone`, `address`, `status`, `avt`) VALUES
(6, '2024-08-24 02:46:28', 'acac', '12321312', 'adasdac', 0, 'avt.jpg'),
(7, '0000-00-00 00:00:00', 'qeqweqw', '1232131', 'câccacascas', 0, 'avt.jpg'),
(8, '0000-00-00 00:00:00', 'Lê Thanh Phú', '0312321', 'HCM', 0, 'avt.jpg'),
(9, '0000-00-00 00:00:00', 'ADAs', '12132132', 'ADASDSADAS', 0, 'avt.jpg'),
(10, '0000-00-00 00:00:00', 'haha', '23128731287', 'jhadsahdahd', 0, 'avt.jpg'),
(11, '0000-00-00 00:00:00', 'haha', '123', 'hcm', 0, 'avt.jpg'),
(12, '0000-00-00 00:00:00', 'haha', '2381231', 'hcm', 0, 'avt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Peri'),
(2, 'Fury'),
(3, 'Rhino'),
(4, ' O\'min'),
(5, 'Cuppa'),
(10, 'Cơ siêu cấp'),
(24, 'Hi'),
(25, 'cũ');

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id`, `id_bill`, `id_product`, `name`, `quantity`, `price`) VALUES
(5, 0, 2, '', 1, 0),
(6, 7, 2, '', 1, 0),
(7, 7, 3, '', 1, 0),
(8, 8, 1003, '', 1, 0),
(9, 9, 1003, '', 1, 0),
(10, 10, 1, '', 2, 0),
(11, 10, 2, '', 1, 0),
(12, 11, 1, '', 1, 0),
(13, 12, 1, '', 1, 0),
(14, 12, 2, '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cate` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `view` int(100) NOT NULL DEFAULT 0,
  `hidden` int(10) NOT NULL,
  `hot` int(10) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_cate`, `name`, `price`, `price_sale`, `image`, `date`, `view`, `hidden`, `hot`, `description`) VALUES
(0, 1, 'Phú', 1313, 2147483647, 'peri3.jpg', '0000-00-00', 0, 0, 0, ''),
(1, 4, 'O min', 10000000, 9999999, 'peri4.jpg', '2024-05-01', 0, 0, 0, 'Đẹp mắt nhất'),
(2, 2, 'Fury CA-1', 1000000, 199999, 'peri3.jpg', '0000-00-00', 0, 1, 0, 'xịn sò'),
(3, 4, 'Phá Nhảy O’Min', 2000000, 199999, 'peri1.jpg', '0000-00-00', 100, 1, 1, ''),
(4, 3, 'Cơ Rhino', 2000000, 99999999, 'peri2.jpg', '2024-05-02', 100, 0, 0, ''),
(11, 2, 'Gậy nhảy', 13213123, 12312321, 'peri1.jpg', '2003-10-20', 0, 0, 0, ''),
(1002, 2, 'Gậy tùm lum', 13213123, 12312321, 'peri1.jpg', '2003-10-20', 0, 0, 0, ''),
(1003, 2, 'Gậy tùm lum tùm ', 13213123, 12312321, 'peri1.jpg', '2003-10-20', 0, 0, 0, ''),
(1004, 2, 'Gậy tè le', 13213123, 12312321, 'peri1.jpg', '2003-10-20', 0, 0, 0, ''),
(1005, 3, 'Cơ Rhino 2', 2000000, 99999999, 'peri2.jpg', '2024-05-02', 100, 1, 0, ''),
(1006, 3, 'Cơ Rhino 3', 2000000, 99999999, 'peri2.jpg', '2024-05-02', 100, 1, 0, ''),
(1007, 3, 'Cơ Rhino 3', 2000000, 99999999, 'peri2.jpg', '2024-05-02', 100, 0, 0, ''),
(1008, 3, 'Cơ Rhino 4', 2000000, 99999999, 'peri2.jpg', '2024-05-02', 100, 0, 0, ''),
(1009, 2, 'Fury CA-2', 1000000, 199999, 'peri3.jpg', '0000-00-00', 0, 0, 0, 'xịn sò'),
(1010, 2, 'Fury CA-5', 1000000, 199999, 'peri3.jpg', '0000-00-00', 0, 0, 0, 'xịn sò'),
(1011, 1, 'Peri 1', 1313, 2147483647, 'peri3.jpg', '0000-00-00', 0, 0, 0, ''),
(1012, 1, 'Peri 2', 1313, 2147483647, 'peri3.jpg', '0000-00-00', 0, 0, 0, ''),
(1013, 4, 'O min 2', 10000000, 9999999, 'peri4.jpg', '2024-05-01', 0, 0, 0, 'Đẹp mắt nhất'),
(1014, 4, 'O min 3', 10000000, 9999999, 'peri4.jpg', '2024-05-01', 0, 0, 0, 'Đẹp mắt nhất'),
(1021, 1, 'hahahahaha', 3123123, 22321, 'avt.jpg', '2024-08-22', 1312, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `quality`
--

CREATE TABLE `quality` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quality`
--

INSERT INTO `quality` (`id`, `name`) VALUES
(1, 'Bình thường'),
(2, 'Giá rẻ'),
(3, 'Cao cấp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `role` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `username`, `role`) VALUES
(4, 'phu', '$2b$10$lLKPWbqMkMJRvluFU3gjzezkqiru59s3QgZRefKC9dB8SZNGAmnfy', 'hahahah@gamil.com', 'thphu', 1),
(7, 'phu', '$2b$10$0z1xtdokv460Gxt.vW5tBu/xYcuf7/9zjM0qpURVgM8kiEXSpGIhu', 'abc@gamil.com', 'thanhphu', 0),
(8, 'phu', '$2b$10$HNb689914Js7tXpmeNvCQ.ObdsyQJjcjMwmWjlPWG.fZ2CXf1jFfu', 'haha@gmail.com', '', 0),
(9, 'thanhphu', '$2b$10$PZ2VZ4lvTIdyqjZa5Nn26upHlDMEJjIULmB1ex2k1WjH56HA7wsee', 'haha123@', '', 0),
(10, 'hihi', '$2b$10$daqVM5K/DWFs2EvhVBFIUesnv4HdXBLGrbph7jZ5dsVemjwlmV37a', 'hahahaa@gmail.com', '', 0),
(11, 'phu', '$2b$10$LyHOfu37/kK0/I7Q65AUZ.SR4v0K0klcpXHr2QyeTGANzW6UJ.Je2', 'âuhdáudhasuhd@gmail.com', '', 0),
(12, 'phuu', '$2b$10$0FlMOS31Z4cmh3g7R.APh.eeZX8P0D8y90pl1eXp2snEChpT1ltw6', 'hihi@gmail,com', '', 0),
(13, 'Phuuuu', '$2b$10$13evrYAnDp/Kx8cCM7gyj.E4fDXOxMFse./QZn8dT4AQZ4hc7nHsS', 'hahah', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quality`
--
ALTER TABLE `quality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id_bill` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1022;

--
-- AUTO_INCREMENT for table `quality`
--
ALTER TABLE `quality`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
