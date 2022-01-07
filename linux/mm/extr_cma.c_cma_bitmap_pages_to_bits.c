
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma {unsigned long order_per_bit; } ;


 unsigned long ALIGN (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long cma_bitmap_pages_to_bits(const struct cma *cma,
           unsigned long pages)
{
 return ALIGN(pages, 1UL << cma->order_per_bit) >> cma->order_per_bit;
}
