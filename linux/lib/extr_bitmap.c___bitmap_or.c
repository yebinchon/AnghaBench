
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BITS_TO_LONGS (unsigned int) ;

void __bitmap_or(unsigned long *dst, const unsigned long *bitmap1,
    const unsigned long *bitmap2, unsigned int bits)
{
 unsigned int k;
 unsigned int nr = BITS_TO_LONGS(bits);

 for (k = 0; k < nr; k++)
  dst[k] = bitmap1[k] | bitmap2[k];
}
