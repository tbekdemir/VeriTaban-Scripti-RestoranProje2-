USE [RestoranTakip]
GO
/****** Object:  Table [dbo].[TblFisler]    Script Date: 25.11.2022 11:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblFisler](
	[FisID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelID] [int] NULL,
	[FisTutarı] [varchar](30) NULL,
	[FisTarihi] [smalldatetime] NULL,
 CONSTRAINT [PK__TblFisle__61CC24D9B076BD33] PRIMARY KEY CLUSTERED 
(
	[FisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblFisSatirlari]    Script Date: 25.11.2022 11:41:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblFisSatirlari](
	[FisSatirID] [int] IDENTITY(1,1) NOT NULL,
	[FisID] [int] NULL,
	[UrunID] [int] NULL,
	[Adet] [int] NULL,
	[ToplamFiyat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FisSatirID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblKategoriler]    Script Date: 25.11.2022 11:41:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblKategoriler](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblLoglar]    Script Date: 25.11.2022 11:41:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblLoglar](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelID] [int] NOT NULL,
	[IslemTarih] [smalldatetime] NOT NULL,
	[İslem] [nvarchar](30) NOT NULL,
	[IPAddresi] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK__TblLogla__5E5499A89C1ADAE3] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPersoneller]    Script Date: 25.11.2022 11:41:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPersoneller](
	[PersonelID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](30) NOT NULL,
	[Soyad] [varchar](30) NULL,
	[RolID] [int] NULL,
	[KullaniciAdi] [varchar](30) NULL,
	[Sifre] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblRoller]    Script Date: 25.11.2022 11:41:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRoller](
	[RolID] [int] IDENTITY(1,1) NOT NULL,
	[RolAdi] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUrunler]    Script Date: 25.11.2022 11:41:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUrunler](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [varchar](30) NULL,
	[KategoriID] [int] NULL,
	[UrunFiyati] [int] NULL,
	[Stok] [int] NULL,
	[SevkiyatTarihi] [smalldatetime] NULL,
 CONSTRAINT [PK__TblUrunl__623D364B3FF99ADB] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblFisler] ON 

INSERT [dbo].[TblFisler] ([FisID], [PersonelID], [FisTutarı], [FisTarihi]) VALUES (1, 3, N'58', CAST(N'2022-11-25T11:18:00' AS SmallDateTime))
INSERT [dbo].[TblFisler] ([FisID], [PersonelID], [FisTutarı], [FisTarihi]) VALUES (2, 4, N'250', CAST(N'2022-11-25T11:18:00' AS SmallDateTime))
INSERT [dbo].[TblFisler] ([FisID], [PersonelID], [FisTutarı], [FisTarihi]) VALUES (3, 5, N'165', CAST(N'2022-11-25T11:18:00' AS SmallDateTime))
INSERT [dbo].[TblFisler] ([FisID], [PersonelID], [FisTutarı], [FisTarihi]) VALUES (4, 3, N'200', CAST(N'2022-11-25T11:26:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[TblFisler] OFF
GO
SET IDENTITY_INSERT [dbo].[TblFisSatirlari] ON 

INSERT [dbo].[TblFisSatirlari] ([FisSatirID], [FisID], [UrunID], [Adet], [ToplamFiyat]) VALUES (4, 1, 32, 2, 16)
INSERT [dbo].[TblFisSatirlari] ([FisSatirID], [FisID], [UrunID], [Adet], [ToplamFiyat]) VALUES (5, 1, 4, 1, 42)
INSERT [dbo].[TblFisSatirlari] ([FisSatirID], [FisID], [UrunID], [Adet], [ToplamFiyat]) VALUES (6, 2, 14, 2, 160)
INSERT [dbo].[TblFisSatirlari] ([FisSatirID], [FisID], [UrunID], [Adet], [ToplamFiyat]) VALUES (7, 2, 38, 2, 40)
INSERT [dbo].[TblFisSatirlari] ([FisSatirID], [FisID], [UrunID], [Adet], [ToplamFiyat]) VALUES (8, 2, 28, 1, 50)
INSERT [dbo].[TblFisSatirlari] ([FisSatirID], [FisID], [UrunID], [Adet], [ToplamFiyat]) VALUES (9, 3, 1, 1, 165)
INSERT [dbo].[TblFisSatirlari] ([FisSatirID], [FisID], [UrunID], [Adet], [ToplamFiyat]) VALUES (10, 4, 22, 2, 160)
INSERT [dbo].[TblFisSatirlari] ([FisSatirID], [FisID], [UrunID], [Adet], [ToplamFiyat]) VALUES (11, 4, 39, 2, 40)
SET IDENTITY_INSERT [dbo].[TblFisSatirlari] OFF
GO
SET IDENTITY_INSERT [dbo].[TblKategoriler] ON 

INSERT [dbo].[TblKategoriler] ([KategoriID], [KategoriAdi]) VALUES (1, N'Kahvaltı')
INSERT [dbo].[TblKategoriler] ([KategoriID], [KategoriAdi]) VALUES (2, N'Salatalar')
INSERT [dbo].[TblKategoriler] ([KategoriID], [KategoriAdi]) VALUES (3, N'Makarnalar')
INSERT [dbo].[TblKategoriler] ([KategoriID], [KategoriAdi]) VALUES (4, N'Hamburgerler')
INSERT [dbo].[TblKategoriler] ([KategoriID], [KategoriAdi]) VALUES (5, N'Pizzalar')
INSERT [dbo].[TblKategoriler] ([KategoriID], [KategoriAdi]) VALUES (6, N'Beyaz Etler')
INSERT [dbo].[TblKategoriler] ([KategoriID], [KategoriAdi]) VALUES (7, N'Kırmızı Etler')
INSERT [dbo].[TblKategoriler] ([KategoriID], [KategoriAdi]) VALUES (8, N'Tatlılar')
INSERT [dbo].[TblKategoriler] ([KategoriID], [KategoriAdi]) VALUES (9, N'Sıcak İçecekler')
INSERT [dbo].[TblKategoriler] ([KategoriID], [KategoriAdi]) VALUES (10, N'Soğuk İçecekler')
INSERT [dbo].[TblKategoriler] ([KategoriID], [KategoriAdi]) VALUES (11, N'Milkshake ve Frozen')
INSERT [dbo].[TblKategoriler] ([KategoriID], [KategoriAdi]) VALUES (12, N'Kokteyl')
SET IDENTITY_INSERT [dbo].[TblKategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[TblPersoneller] ON 

INSERT [dbo].[TblPersoneller] ([PersonelID], [Ad], [Soyad], [RolID], [KullaniciAdi], [Sifre]) VALUES (1, N'TOLGA', N'BEKDEMİR', 1, N'admin', N'admin')
INSERT [dbo].[TblPersoneller] ([PersonelID], [Ad], [Soyad], [RolID], [KullaniciAdi], [Sifre]) VALUES (2, N'EROL ', N'ÇOLAK', 2, N'mudur', N'mudur')
INSERT [dbo].[TblPersoneller] ([PersonelID], [Ad], [Soyad], [RolID], [KullaniciAdi], [Sifre]) VALUES (3, N'TAYLAN', N'YILDIRIM', 3, N'garson', N'garson')
INSERT [dbo].[TblPersoneller] ([PersonelID], [Ad], [Soyad], [RolID], [KullaniciAdi], [Sifre]) VALUES (4, N'SERKAN', N'IŞIK', 3, N'162534', N'sifre162534')
INSERT [dbo].[TblPersoneller] ([PersonelID], [Ad], [Soyad], [RolID], [KullaniciAdi], [Sifre]) VALUES (5, N'YAHYA ', N'DEMİR', 3, N'273645', N'sifre273645')
SET IDENTITY_INSERT [dbo].[TblPersoneller] OFF
GO
SET IDENTITY_INSERT [dbo].[TblRoller] ON 

INSERT [dbo].[TblRoller] ([RolID], [RolAdi]) VALUES (1, N'Admin')
INSERT [dbo].[TblRoller] ([RolID], [RolAdi]) VALUES (2, N'Müdür')
INSERT [dbo].[TblRoller] ([RolID], [RolAdi]) VALUES (3, N'Garson')
SET IDENTITY_INSERT [dbo].[TblRoller] OFF
GO
SET IDENTITY_INSERT [dbo].[TblUrunler] ON 

INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (1, N'Serpme Kahvaltı', 1, 165, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (2, N'Kahvaltı Tabağı', 1, 80, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (3, N'Sade Menemen', 1, 44, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (4, N'Sahanda Yumurta', 1, 42, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (5, N'Kaşarlı Omlet', 1, 47, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (6, N'Karışık Omlet', 1, 50, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (7, N'Sezar Salata', 2, 74, 100, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (8, N'Ton Balıklı Salata', 2, 75, 100, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (9, N'Mevsim Salata', 2, 69, 100, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (10, N'Köri Tavuklu Penne', 3, 77, 150, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (11, N'Spagetti Napoliten', 3, 72, 150, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (12, N'Sebzeli Penne', 3, 72, 150, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (13, N'Tolga Burger', 4, 84, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (14, N'Mexico Burger', 4, 80, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (15, N'Cheese Burger', 4, 75, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (16, N'Margarita Pizza', 5, 71, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (17, N'Sucuklu Pizza', 5, 76, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (18, N'Mexico Pizza', 5, 84, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (19, N'Vejeteryan Pizza', 5, 70, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (20, N'Mantar Soslu Tavuk', 6, 84, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (21, N'Köri Soslu Tavuk ', 6, 81, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (22, N'Tavuk Şinitzel', 6, 80, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (23, N'Kekikli Tavuk', 6, 81, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (24, N'Steak Vitello', 7, 140, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (25, N'Sac Tava', 7, 120, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (26, N'Kaşarlı Köfte', 7, 92, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (27, N'Izgara Köfte', 7, 86, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (28, N'Çikolatalı Sufle', 8, 50, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (29, N'Magnolya', 8, 47, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (30, N'Tramisu', 8, 42, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (31, N'Frambuazlı Cheescake', 8, 42, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (32, N'Çay', 9, 8, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (33, N'Fincan Çay', 9, 16, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (34, N'Türk Kahvesi', 9, 29, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (35, N'Sahlep', 9, 36, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (36, N'Bitki Çayı', 9, 40, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (37, N'Mocha', 9, 35, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (38, N'Coca Cola', 10, 20, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (39, N'Fanta', 10, 20, 198, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (40, N'Sprite', 10, 20, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (41, N'Enerji İçeceği', 10, 35, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (42, N'Ayran', 10, 17, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (43, N'Churchill', 10, 26, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (44, N'Limonata', 10, 34, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (45, N'Sıkma Portakal', 10, 37, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (46, N'Çikolata Milkshake', 11, 42, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (47, N'Çilek Milkshake', 11, 42, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (48, N'Vanilya Milkshake', 11, 42, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (49, N'Limon Frozen', 11, 43, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (50, N'Karpuz Frozen', 11, 43, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (51, N'Kavun Frozen', 11, 43, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (52, N'Cherry Granate', 12, 47, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (53, N'Mojito', 12, 47, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
INSERT [dbo].[TblUrunler] ([UrunID], [UrunAdi], [KategoriID], [UrunFiyati], [Stok], [SevkiyatTarihi]) VALUES (54, N'Atom', 12, 49, 200, CAST(N'2022-11-25T10:58:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[TblUrunler] OFF
GO
ALTER TABLE [dbo].[TblFisler]  WITH CHECK ADD  CONSTRAINT [FK_TblFisler_TblPersoneller] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[TblPersoneller] ([PersonelID])
GO
ALTER TABLE [dbo].[TblFisler] CHECK CONSTRAINT [FK_TblFisler_TblPersoneller]
GO
ALTER TABLE [dbo].[TblFisSatirlari]  WITH CHECK ADD  CONSTRAINT [FK_TblFisSatirlari_TblFisler] FOREIGN KEY([FisID])
REFERENCES [dbo].[TblFisler] ([FisID])
GO
ALTER TABLE [dbo].[TblFisSatirlari] CHECK CONSTRAINT [FK_TblFisSatirlari_TblFisler]
GO
ALTER TABLE [dbo].[TblFisSatirlari]  WITH CHECK ADD  CONSTRAINT [FK_TblFisSatirlari_TblUrunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[TblUrunler] ([UrunID])
GO
ALTER TABLE [dbo].[TblFisSatirlari] CHECK CONSTRAINT [FK_TblFisSatirlari_TblUrunler]
GO
ALTER TABLE [dbo].[TblLoglar]  WITH CHECK ADD  CONSTRAINT [FK_TblLoglar_TblPersoneller] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[TblPersoneller] ([PersonelID])
GO
ALTER TABLE [dbo].[TblLoglar] CHECK CONSTRAINT [FK_TblLoglar_TblPersoneller]
GO
ALTER TABLE [dbo].[TblPersoneller]  WITH CHECK ADD  CONSTRAINT [FK_TblPersoneller_TblRoller] FOREIGN KEY([RolID])
REFERENCES [dbo].[TblRoller] ([RolID])
GO
ALTER TABLE [dbo].[TblPersoneller] CHECK CONSTRAINT [FK_TblPersoneller_TblRoller]
GO
ALTER TABLE [dbo].[TblUrunler]  WITH CHECK ADD  CONSTRAINT [FK_TblUrunler_TblKategoriler] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[TblKategoriler] ([KategoriID])
GO
ALTER TABLE [dbo].[TblUrunler] CHECK CONSTRAINT [FK_TblUrunler_TblKategoriler]
GO
/****** Object:  Trigger [dbo].[TrgUrunAzalt]    Script Date: 25.11.2022 11:41:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TrgUrunAzalt]
ON [dbo].[TblFisSatirlari]
AFTER INSERT
AS
BEGIN
DECLARE @UrunID INT
DECLARE @Adet INT
SELECT @UrunID=UrunID , @Adet=Adet FROM TblFisSatirlari
UPDATE	TblUrunler SET Stok = (Stok-@Adet) WHERE UrunID=@UrunID
END
GO
ALTER TABLE [dbo].[TblFisSatirlari] ENABLE TRIGGER [TrgUrunAzalt]
GO
