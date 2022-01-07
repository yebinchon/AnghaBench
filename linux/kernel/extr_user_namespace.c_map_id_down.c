
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uid_gid_map {int dummy; } ;


 int map_id_range_down (struct uid_gid_map*,int ,int) ;

__attribute__((used)) static u32 map_id_down(struct uid_gid_map *map, u32 id)
{
 return map_id_range_down(map, id, 1);
}
