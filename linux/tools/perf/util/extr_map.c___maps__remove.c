
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maps {int names; int entries; } ;
struct map {int rb_node_name; int rb_node; } ;


 int map__put (struct map*) ;
 int rb_erase_init (int *,int *) ;

__attribute__((used)) static void __maps__remove(struct maps *maps, struct map *map)
{
 rb_erase_init(&map->rb_node, &maps->entries);
 map__put(map);

 rb_erase_init(&map->rb_node_name, &maps->names);
 map__put(map);
}
