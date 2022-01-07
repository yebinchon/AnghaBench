
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uid_gid_map {struct uid_gid_extent* extent; } ;
struct uid_gid_extent {scalar_t__ lower_first; scalar_t__ count; } ;



__attribute__((used)) static struct uid_gid_extent *
map_id_up_base(unsigned extents, struct uid_gid_map *map, u32 id)
{
 unsigned idx;
 u32 first, last;


 for (idx = 0; idx < extents; idx++) {
  first = map->extent[idx].lower_first;
  last = first + map->extent[idx].count - 1;
  if (id >= first && id <= last)
   return &map->extent[idx];
 }
 return ((void*)0);
}
