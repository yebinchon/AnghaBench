
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned short snd_gf1_lvol_to_gvol_raw(unsigned int vol)
{
 unsigned short e, m, tmp;

 if (vol > 65535)
  vol = 65535;
 tmp = vol;
 e = 7;
 if (tmp < 128) {
  while (e > 0 && tmp < (1 << e))
   e--;
 } else {
  while (tmp > 255) {
   tmp >>= 1;
   e++;
  }
 }
 m = vol - (1 << e);
 if (m > 0) {
  if (e > 8)
   m >>= e - 8;
  else if (e < 8)
   m <<= 8 - e;
  m &= 255;
 }
 return (e << 8) | m;
}
