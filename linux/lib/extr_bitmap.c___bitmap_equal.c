
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long const BITMAP_LAST_WORD_MASK (unsigned int) ;
 unsigned int BITS_PER_LONG ;

int __bitmap_equal(const unsigned long *bitmap1,
  const unsigned long *bitmap2, unsigned int bits)
{
 unsigned int k, lim = bits/BITS_PER_LONG;
 for (k = 0; k < lim; ++k)
  if (bitmap1[k] != bitmap2[k])
   return 0;

 if (bits % BITS_PER_LONG)
  if ((bitmap1[k] ^ bitmap2[k]) & BITMAP_LAST_WORD_MASK(bits))
   return 0;

 return 1;
}
