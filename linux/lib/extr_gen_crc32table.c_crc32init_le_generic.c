
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned int LE_TABLE_ROWS ;
 int LE_TABLE_SIZE ;

__attribute__((used)) static void crc32init_le_generic(const uint32_t polynomial,
     uint32_t (*tab)[256])
{
 unsigned i, j;
 uint32_t crc = 1;

 tab[0][0] = 0;

 for (i = LE_TABLE_SIZE >> 1; i; i >>= 1) {
  crc = (crc >> 1) ^ ((crc & 1) ? polynomial : 0);
  for (j = 0; j < LE_TABLE_SIZE; j += 2 * i)
   tab[0][i + j] = crc ^ tab[0][j];
 }
 for (i = 0; i < LE_TABLE_SIZE; i++) {
  crc = tab[0][i];
  for (j = 1; j < LE_TABLE_ROWS; j++) {
   crc = tab[0][crc & 0xff] ^ (crc >> 8);
   tab[j][i] = crc;
  }
 }
}
