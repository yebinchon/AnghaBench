
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma {unsigned int order_per_bit; } ;



__attribute__((used)) static unsigned long cma_bitmap_aligned_mask(const struct cma *cma,
          unsigned int align_order)
{
 if (align_order <= cma->order_per_bit)
  return 0;
 return (1UL << (align_order - cma->order_per_bit)) - 1;
}
