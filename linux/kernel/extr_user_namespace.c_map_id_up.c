
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uid_gid_map {unsigned int nr_extents; } ;
struct uid_gid_extent {scalar_t__ first; scalar_t__ lower_first; } ;


 unsigned int UID_GID_MAP_MAX_BASE_EXTENTS ;
 struct uid_gid_extent* map_id_up_base (unsigned int,struct uid_gid_map*,scalar_t__) ;
 struct uid_gid_extent* map_id_up_max (unsigned int,struct uid_gid_map*,scalar_t__) ;
 int smp_rmb () ;

__attribute__((used)) static u32 map_id_up(struct uid_gid_map *map, u32 id)
{
 struct uid_gid_extent *extent;
 unsigned extents = map->nr_extents;
 smp_rmb();

 if (extents <= UID_GID_MAP_MAX_BASE_EXTENTS)
  extent = map_id_up_base(extents, map, id);
 else
  extent = map_id_up_max(extents, map, id);


 if (extent)
  id = (id - extent->lower_first) + extent->first;
 else
  id = (u32) -1;

 return id;
}
