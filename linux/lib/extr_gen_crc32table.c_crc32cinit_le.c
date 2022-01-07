
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRC32C_POLY_LE ;
 int crc32ctable_le ;
 int crc32init_le_generic (int ,int ) ;

__attribute__((used)) static void crc32cinit_le(void)
{
 crc32init_le_generic(CRC32C_POLY_LE, crc32ctable_le);
}
