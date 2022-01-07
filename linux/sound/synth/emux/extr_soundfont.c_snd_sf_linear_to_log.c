
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* log_tbl ;

int
snd_sf_linear_to_log(unsigned int amount, int offset, int ratio)
{
 int v;
 int s, low, bit;

 if (amount < 2)
  return 0;
 for (bit = 0; ! (amount & 0x80000000L); bit++)
  amount <<= 1;
 s = (amount >> 24) & 0x7f;
 low = (amount >> 16) & 0xff;

 v = (log_tbl[s + 1] * low + log_tbl[s] * (0x100 - low)) >> 8;
 v -= offset;
 v = (v * ratio) >> 16;
 v += (24 - bit) * ratio;
 return v;
}
