
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BITMAP_LAST_WORD_MASK (unsigned int) ;
 unsigned int BITS_PER_LONG ;
 unsigned int BITS_TO_LONGS (unsigned int) ;
 int memset (unsigned long*,int ,unsigned int) ;

void __bitmap_shift_right(unsigned long *dst, const unsigned long *src,
   unsigned shift, unsigned nbits)
{
 unsigned k, lim = BITS_TO_LONGS(nbits);
 unsigned off = shift/BITS_PER_LONG, rem = shift % BITS_PER_LONG;
 unsigned long mask = BITMAP_LAST_WORD_MASK(nbits);
 for (k = 0; off + k < lim; ++k) {
  unsigned long upper, lower;





  if (!rem || off + k + 1 >= lim)
   upper = 0;
  else {
   upper = src[off + k + 1];
   if (off + k + 1 == lim - 1)
    upper &= mask;
   upper <<= (BITS_PER_LONG - rem);
  }
  lower = src[off + k];
  if (off + k == lim - 1)
   lower &= mask;
  lower >>= rem;
  dst[k] = lower | upper;
 }
 if (off)
  memset(&dst[lim - off], 0, off*sizeof(unsigned long));
}
