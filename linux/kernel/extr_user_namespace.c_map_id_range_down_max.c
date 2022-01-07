
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct uid_gid_map {int forward; } ;
struct uid_gid_extent {int dummy; } ;
struct idmap_key {int map_up; void* id; void* count; } ;


 struct uid_gid_extent* bsearch (struct idmap_key*,int ,unsigned int,int,int ) ;
 int cmp_map_id ;

__attribute__((used)) static struct uid_gid_extent *
map_id_range_down_max(unsigned extents, struct uid_gid_map *map, u32 id, u32 count)
{
 struct idmap_key key;

 key.map_up = 0;
 key.count = count;
 key.id = id;

 return bsearch(&key, map->forward, extents,
         sizeof(struct uid_gid_extent), cmp_map_id);
}
