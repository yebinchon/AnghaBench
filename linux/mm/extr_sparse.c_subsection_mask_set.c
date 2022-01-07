
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bitmap_set (unsigned long*,int,int) ;
 int subsection_map_index (unsigned long) ;

__attribute__((used)) static void subsection_mask_set(unsigned long *map, unsigned long pfn,
  unsigned long nr_pages)
{
 int idx = subsection_map_index(pfn);
 int end = subsection_map_index(pfn + nr_pages - 1);

 bitmap_set(map, idx, end - idx + 1);
}
