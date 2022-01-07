
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CRC8_TABLE_SIZE ;

void crc8_populate_msb(u8 table[CRC8_TABLE_SIZE], u8 polynomial)
{
 int i, j;
 const u8 msbit = 0x80;
 u8 t = msbit;

 table[0] = 0;

 for (i = 1; i < CRC8_TABLE_SIZE; i *= 2) {
  t = (t << 1) ^ (t & msbit ? polynomial : 0);
  for (j = 0; j < i; j++)
   table[i+j] = table[j] ^ t;
 }
}
