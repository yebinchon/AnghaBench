
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long const BITMAP_LAST_WORD_MASK (unsigned int) ;
 unsigned int BITS_PER_LONG ;

int __bitmap_andnot(unsigned long *dst, const unsigned long *bitmap1,
    const unsigned long *bitmap2, unsigned int bits)
{
 unsigned int k;
 unsigned int lim = bits/BITS_PER_LONG;
 unsigned long result = 0;

 for (k = 0; k < lim; k++)
  result |= (dst[k] = bitmap1[k] & ~bitmap2[k]);
 if (bits % BITS_PER_LONG)
  result |= (dst[k] = bitmap1[k] & ~bitmap2[k] &
      BITMAP_LAST_WORD_MASK(bits));
 return result != 0;
}
