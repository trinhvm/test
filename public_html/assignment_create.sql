-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:19:30.669




-- tables
-- Table: NhanVien
CREATE TABLE NhanVien (
    Manv int  NOT NULL,
    Tennv text  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh varchar(10)  NOT NULL,
    Email int  NOT NULL,
    Maphong int  NOT NULL,
    TPhongban_Maphong int  NOT NULL,
    CONSTRAINT NhanVien_pk PRIMARY KEY (Manv)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    Maphong int  NOT NULL,
    Tenphong varchar(20)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY (Maphong)
)
;









-- foreign keys
-- Reference:  NhanVien_TPhongban (table: NhanVien)


ALTER TABLE NhanVien ADD CONSTRAINT NhanVien_TPhongban 
    FOREIGN KEY (TPhongban_Maphong)
    REFERENCES TPhongban (Maphong)
;





-- End of file.

