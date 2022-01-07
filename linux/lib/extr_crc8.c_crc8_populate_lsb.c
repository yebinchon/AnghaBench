
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CRC8_TABLE_SIZE ;

void crc8_populate_lsb(u8 table[CRC8_TABLE_SIZE], u8 polynomial)
{
 int i, j;
 u8 t = 1;

 table[0] = 0;

 for (i = (CRC8_TABLE_SIZE >> 1); i; i >>= 1) {
  t = (t >> 1) ^ (t & 1 ? polynomial : 0);
  for (j = 0; j < CRC8_TABLE_SIZE; j += 2*i)
   table[i+j] = table[j] ^ t;
 }
}
