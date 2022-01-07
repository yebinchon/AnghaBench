
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint8_t ;
typedef unsigned long long uint64_t ;


 unsigned long long* crc4_tab ;

uint8_t crc4(uint8_t c, uint64_t x, int bits)
{
 int i;


 x &= (1ull << bits) - 1;


 bits = (bits + 3) & ~0x3;


 for (i = bits - 4; i >= 0; i -= 4)
  c = crc4_tab[c ^ ((x >> i) & 0xf)];

 return c;
}
