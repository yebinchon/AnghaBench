
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int maps; } ;
struct map {struct map_groups* groups; } ;


 int __maps__insert (int *,struct map*) ;
 int __maps__insert_name (int *,struct map*) ;

__attribute__((used)) static void __map_groups__insert(struct map_groups *mg, struct map *map)
{
 __maps__insert(&mg->maps, map);
 __maps__insert_name(&mg->maps, map);
 map->groups = mg;
}
