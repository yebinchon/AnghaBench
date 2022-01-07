
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uid_gid_map {int reverse; } ;
struct uid_gid_extent {int dummy; } ;
struct idmap_key {int map_up; int count; int id; } ;


 struct uid_gid_extent* bsearch (struct idmap_key*,int ,unsigned int,int,int ) ;
 int cmp_map_id ;

__attribute__((used)) static struct uid_gid_extent *
map_id_up_max(unsigned extents, struct uid_gid_map *map, u32 id)
{
 struct idmap_key key;

 key.map_up = 1;
 key.count = 1;
 key.id = id;

 return bsearch(&key, map->reverse, extents,
         sizeof(struct uid_gid_extent), cmp_map_id);
}
