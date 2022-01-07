
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int incbcd(unsigned int *bcd,
      int inc,
      unsigned char max,
      size_t chars)
{
 unsigned int init = *bcd, i, j;
 unsigned long long c, dec = 0;


 if (max > 0x9) {
  *bcd += inc;
  return init;
 }


 for (i=0 ; i < chars ; i++) {
  c = (*bcd >> (i << 2)) & 0xf;
  c = c > 9 ? 9 : c;
  for (j=0 ; j < i ; j++)
   c = c * 10;
  dec += c;
 }


 dec += inc;
 *bcd = 0;


 for (i=0 ; i < chars ; i++) {
  for (c=1,j=0 ; j < i ; j++)
   c = c * 10;
  c = (dec / c) % 10;
  *bcd += c << (i << 2);
 }
 return init;
}
