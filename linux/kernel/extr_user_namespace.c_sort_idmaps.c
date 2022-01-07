
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uid_gid_map {int nr_extents; int reverse; int forward; } ;
struct uid_gid_extent {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UID_GID_MAP_MAX_BASE_EXTENTS ;
 int cmp_extents_forward ;
 int cmp_extents_reverse ;
 int kmemdup (int ,int,int ) ;
 int sort (int ,int,int,int ,int *) ;

__attribute__((used)) static int sort_idmaps(struct uid_gid_map *map)
{
 if (map->nr_extents <= UID_GID_MAP_MAX_BASE_EXTENTS)
  return 0;


 sort(map->forward, map->nr_extents, sizeof(struct uid_gid_extent),
      cmp_extents_forward, ((void*)0));


 map->reverse = kmemdup(map->forward,
          map->nr_extents * sizeof(struct uid_gid_extent),
          GFP_KERNEL);
 if (!map->reverse)
  return -ENOMEM;


 sort(map->reverse, map->nr_extents, sizeof(struct uid_gid_extent),
      cmp_extents_reverse, ((void*)0));

 return 0;
}
