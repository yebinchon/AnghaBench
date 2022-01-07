
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uid_gid_map {int nr_extents; struct uid_gid_extent* forward; struct uid_gid_extent* extent; int * reverse; } ;
struct uid_gid_extent {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UID_GID_MAP_MAX_BASE_EXTENTS ;
 int UID_GID_MAP_MAX_EXTENTS ;
 struct uid_gid_extent* kmalloc_array (int ,int,int ) ;
 int memcpy (struct uid_gid_extent*,struct uid_gid_extent*,int) ;

__attribute__((used)) static int insert_extent(struct uid_gid_map *map, struct uid_gid_extent *extent)
{
 struct uid_gid_extent *dest;

 if (map->nr_extents == UID_GID_MAP_MAX_BASE_EXTENTS) {
  struct uid_gid_extent *forward;


  forward = kmalloc_array(UID_GID_MAP_MAX_EXTENTS,
     sizeof(struct uid_gid_extent),
     GFP_KERNEL);
  if (!forward)
   return -ENOMEM;




  memcpy(forward, map->extent,
         map->nr_extents * sizeof(map->extent[0]));

  map->forward = forward;
  map->reverse = ((void*)0);
 }

 if (map->nr_extents < UID_GID_MAP_MAX_BASE_EXTENTS)
  dest = &map->extent[map->nr_extents];
 else
  dest = &map->forward[map->nr_extents];

 *dest = *extent;
 map->nr_extents++;
 return 0;
}
