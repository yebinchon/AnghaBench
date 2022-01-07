
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BITS_TO_LONGS (unsigned int) ;

void __bitmap_complement(unsigned long *dst, const unsigned long *src, unsigned int bits)
{
 unsigned int k, lim = BITS_TO_LONGS(bits);
 for (k = 0; k < lim; ++k)
  dst[k] = ~src[k];
}
