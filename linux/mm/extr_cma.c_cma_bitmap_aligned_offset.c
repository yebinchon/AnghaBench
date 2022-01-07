
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma {unsigned long base_pfn; unsigned long order_per_bit; } ;



__attribute__((used)) static unsigned long cma_bitmap_aligned_offset(const struct cma *cma,
            unsigned int align_order)
{
 return (cma->base_pfn & ((1UL << align_order) - 1))
  >> cma->order_per_bit;
}
