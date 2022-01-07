
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BITMAP_LAST_WORD_MASK (unsigned int) ;
 unsigned int BITS_PER_LONG ;

bool __bitmap_or_equal(const unsigned long *bitmap1,
         const unsigned long *bitmap2,
         const unsigned long *bitmap3,
         unsigned int bits)
{
 unsigned int k, lim = bits / BITS_PER_LONG;
 unsigned long tmp;

 for (k = 0; k < lim; ++k) {
  if ((bitmap1[k] | bitmap2[k]) != bitmap3[k])
   return 0;
 }

 if (!(bits % BITS_PER_LONG))
  return 1;

 tmp = (bitmap1[k] | bitmap2[k]) ^ bitmap3[k];
 return (tmp & BITMAP_LAST_WORD_MASK(bits)) == 0;
}
