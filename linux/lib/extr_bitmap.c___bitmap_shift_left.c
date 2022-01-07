
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BITS_PER_LONG ;
 unsigned int BITS_TO_LONGS (unsigned int) ;
 int memset (unsigned long*,int ,unsigned int) ;

void __bitmap_shift_left(unsigned long *dst, const unsigned long *src,
   unsigned int shift, unsigned int nbits)
{
 int k;
 unsigned int lim = BITS_TO_LONGS(nbits);
 unsigned int off = shift/BITS_PER_LONG, rem = shift % BITS_PER_LONG;
 for (k = lim - off - 1; k >= 0; --k) {
  unsigned long upper, lower;





  if (rem && k > 0)
   lower = src[k - 1] >> (BITS_PER_LONG - rem);
  else
   lower = 0;
  upper = src[k] << rem;
  dst[k + off] = lower | upper;
 }
 if (off)
  memset(dst, 0, off*sizeof(unsigned long));
}
