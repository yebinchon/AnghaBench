
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRC32_POLY_LE ;
 int crc32init_le_generic (int ,int ) ;
 int crc32table_le ;

__attribute__((used)) static void crc32init_le(void)
{
 crc32init_le_generic(CRC32_POLY_LE, crc32table_le);
}
