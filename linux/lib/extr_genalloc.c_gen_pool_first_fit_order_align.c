
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int dummy; } ;


 unsigned long bitmap_find_next_zero_area (unsigned long*,unsigned long,unsigned long,unsigned int,unsigned long) ;
 int roundup_pow_of_two (unsigned int) ;

unsigned long gen_pool_first_fit_order_align(unsigned long *map,
  unsigned long size, unsigned long start,
  unsigned int nr, void *data, struct gen_pool *pool,
  unsigned long start_addr)
{
 unsigned long align_mask = roundup_pow_of_two(nr) - 1;

 return bitmap_find_next_zero_area(map, size, start, nr, align_mask);
}
