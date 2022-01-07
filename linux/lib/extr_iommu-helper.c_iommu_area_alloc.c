
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ALIGN (unsigned long,unsigned long) ;
 unsigned long bitmap_find_next_zero_area (unsigned long*,unsigned long,unsigned long,unsigned int,unsigned long) ;
 int bitmap_set (unsigned long*,unsigned long,unsigned int) ;
 scalar_t__ iommu_is_span_boundary (unsigned long,unsigned int,unsigned long,unsigned long) ;

unsigned long iommu_area_alloc(unsigned long *map, unsigned long size,
          unsigned long start, unsigned int nr,
          unsigned long shift, unsigned long boundary_size,
          unsigned long align_mask)
{
 unsigned long index;


 size -= 1;
again:
 index = bitmap_find_next_zero_area(map, size, start, nr, align_mask);
 if (index < size) {
  if (iommu_is_span_boundary(index, nr, shift, boundary_size)) {
   start = ALIGN(shift + index, boundary_size) - shift;
   goto again;
  }
  bitmap_set(map, index, nr);
  return index;
 }
 return -1;
}
