
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int slab_flags_t ;
typedef int freelist_idx_t ;


 int CFLGS_OBJFREELIST_SLAB ;
 int CFLGS_OFF_SLAB ;
 unsigned long PAGE_SIZE ;

__attribute__((used)) static unsigned int cache_estimate(unsigned long gfporder, size_t buffer_size,
  slab_flags_t flags, size_t *left_over)
{
 unsigned int num;
 size_t slab_size = PAGE_SIZE << gfporder;
 if (flags & (CFLGS_OBJFREELIST_SLAB | CFLGS_OFF_SLAB)) {
  num = slab_size / buffer_size;
  *left_over = slab_size % buffer_size;
 } else {
  num = slab_size / (buffer_size + sizeof(freelist_idx_t));
  *left_over = slab_size %
   (buffer_size + sizeof(freelist_idx_t));
 }

 return num;
}
