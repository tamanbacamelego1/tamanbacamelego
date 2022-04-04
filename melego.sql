-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 09 Jan 2022 pada 09.53
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `melego`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi`
--

CREATE TABLE `donasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `nohp` varchar(128) NOT NULL,
  `jenis` varchar(128) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `donasi`
--

INSERT INTO `donasi` (`id`, `nama`, `nohp`, `jenis`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Mimin', '1232131', 'Buku', '10BUKU', '2021-11-29 11:17:51', '2021-11-29 11:17:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-11-23-180344', 'App\\Database\\Migrations\\User', 'default', 'App', 1637723951, 1),
(2, '2021-11-23-180620', 'App\\Database\\Migrations\\Rakbuku', 'default', 'App', 1637723951, 1),
(3, '2021-11-23-181000', 'App\\Database\\Migrations\\Transaksi', 'default', 'App', 1637723952, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rakbuku`
--

CREATE TABLE `rakbuku` (
  `id` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `tahun_terbit` varchar(4) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rakbuku`
--

INSERT INTO `rakbuku` (`id`, `judul`, `pengarang`, `tahun_terbit`, `deskripsi`, `jenis`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Perkebunan', 'Sayuto', '2021', '', 'alam', '', 1, '2021-11-24 01:54:43', '2021-11-30 01:36:19'),
(6, 'Perkebunan Teh', 'Teteh', '2002', '', 'alam', '', 0, '2021-11-24 01:55:12', '2021-11-24 01:55:12'),
(7, 'Perkebunan', 'Sayuto', '2002', '', 'alam', '1637742744_ced3a721cb20acbc8d3b.jpeg', 0, '2021-11-24 02:31:18', '2021-11-29 11:23:49'),
(9, 'membuat gulai', 'ibu bunga', 'cape', '', 'memasak', '1638179894_3b7f9928ca910dc71b39.jpg', 1, '2021-11-29 03:58:14', '2021-11-29 04:00:06'),
(10, 'Taman', 'Suhadi', 'Meru', '', 'Anak', '1638206773_f03633ec8c6a03909a7c.jpg', 0, '2021-11-29 11:26:13', '2021-11-29 11:26:13'),
(11, 'karate', 'Jackie Chan', 'Meru', 'Karate Ciat Ciat Ciat', 'Bela Diri', '1638257902_98bcb817949081ea963f.jpeg', 0, '2021-11-30 01:38:22', '2021-11-30 01:38:22'),
(12, 'Putri Lummimut', 'Nurqoriyah', 'Menc', 'Putri Lummimut Adalah....', 'Cerita Rakyat', '1638258215_407047e85ee0ba1727f6.jpg', 0, '2021-11-30 01:43:35', '2022-01-07 02:11:43'),
(13, 'Keong Mas', 'Rakyats', '2019', 'Keong mas adalah....', 'Cerita Rakyat', '1638258359_9c431ae22744d1c9e466.jpeg', 1, '2021-11-30 01:45:59', '2021-11-30 02:05:30'),
(14, 'Sejarah Indonesia', 'Nagabonar', '1994', 'Buku naga', 'Sejarah', '1638259642_91c7de033db3d27a7aa9.jpg', 1, '2021-11-30 02:07:22', '2022-01-07 01:35:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(5) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `tahun_terbit` varchar(5) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  `mulai` datetime NOT NULL,
  `kembali` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `email`, `name`, `judul`, `pengarang`, `tahun_terbit`, `jenis`, `status`, `mulai`, `kembali`, `created_at`, `updated_at`) VALUES
(8, 'tester@gmail.com', '', 'Perkebunan', 'Sayuto', '2002', 'alam', 0, '2021-11-24 23:08:00', '2021-11-30 23:08:00', '2021-11-24 10:08:22', '2021-11-29 11:23:49'),
(9, 'tester@gmail.com', '', 'Perkebunan', 'Sayuto', '2002', 'alam', 0, '2021-11-25 01:01:00', '2021-11-30 01:01:00', '2021-11-24 12:01:09', '2021-11-29 11:23:49'),
(10, 'Bebas@qmail.id', '', 'membuat gulai', 'ibu bunga', 'cape', 'memasak', 2, '2021-11-29 17:00:00', '2021-11-30 17:00:00', '2021-11-29 04:00:06', '2021-11-29 04:00:46'),
(11, 'buambang@mail.com', '', 'Perkebunan', 'Sayuto', '2021', 'alam', 1, '2021-11-30 14:36:00', '2021-12-08 14:36:00', '2021-11-30 01:36:19', '2021-11-30 01:36:19'),
(12, 'vio@mail.com', '', 'Keong Mas', 'Rakyats', '2019', 'Cerita Rakyat', 2, '2021-11-30 15:05:00', '2021-12-04 15:05:00', '2021-11-30 02:05:30', '2021-11-30 02:06:22'),
(13, 'vimail@mail.com', '', 'Sejarah Indonesia', 'Nagabonar', '1994', 'Sejarah', 1, '2022-01-08 14:35:00', '2022-01-15 14:35:00', '2022-01-07 01:35:54', '2022-01-07 01:35:54'),
(14, 'ken@mail.co', '', 'Putri Lummimut', 'Nurqoriyah', 'Menc', 'Cerita Rakyat', 3, '2022-01-08 15:09:00', '2022-01-15 15:09:00', '2022-01-07 02:09:27', '2022-01-07 02:11:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `role` varchar(2) NOT NULL,
  `status` varchar(2) NOT NULL,
  `photo` varchar(2) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `nohp`, `role`, `status`, `photo`, `password`, `address`, `created_at`, `updated_at`) VALUES
(2, 'Pancha', 'Panchabs@mail.com', '45450150454', '1', '1', '', '$2y$10$niAq7jKET2JZx.gBrfCuNeX3NfCHjXHvnJo9vDNGdYl4NEX482x8e', 'Jl.abdulakwaowaowajkowa', '2021-11-24 12:50:56', '2021-11-24 12:50:56'),
(3, 'pnchabs', 'Bebas@qmail.id', '0111566912', '2', '1', '', '$2y$10$niAq7jKET2JZx.gBrfCuNeX3NfCHjXHvnJo9vDNGdYl4NEX482x8e', 'jkt', '2021-11-29 03:51:21', '2021-11-29 03:51:21'),
(4, 'Bambang', 'buambang@mail.com', '12133456496', '2', '1', '', '$2y$10$hW4xvpv7HEBU0YA/UDOWwezHVNo.YLec67wXtcab0db4OFEpoS6ym', 'JKT', '2021-11-30 01:31:12', '2021-11-30 01:31:12'),
(5, 'vio', 'vio@mail.com', '12314564', '2', '1', '', '$2y$10$ukLc93IpuPw9EiZISfGyGOHuEoqdSfZPkV5.Tud9peSP2IwdEJFp6', 'bekasi', '2021-11-30 02:04:50', '2021-11-30 02:04:50'),
(6, 'vivi', 'vimail@mail.com', '12312321', '1', '1', '', '$2y$10$FvJmhiMCANDqiILIpXvNXOYFdxaUyomwVh1ZB8/fdTC0tkhb1rK9.', 'jkt', '2022-01-07 01:33:56', '2022-01-07 01:33:56'),
(7, 'ken', 'ken@mail.co', '56465465', '2', '1', '', '$2y$10$F9P6.obnGijl63nPSb1A7.qcc6u5zkAjTikObHOLs2Y2HjWulFWAW', 'depok', '2022-01-07 02:07:48', '2022-01-07 02:07:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rakbuku`
--
ALTER TABLE `rakbuku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `donasi`
--
ALTER TABLE `donasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `rakbuku`
--
ALTER TABLE `rakbuku`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
