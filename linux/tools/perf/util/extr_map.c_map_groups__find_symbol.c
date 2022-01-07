
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct symbol {int dummy; } ;
struct map_groups {int dummy; } ;
struct map {int (* map_ip ) (struct map*,int ) ;} ;


 struct symbol* map__find_symbol (struct map*,int ) ;
 scalar_t__ map__load (struct map*) ;
 struct map* map_groups__find (struct map_groups*,int ) ;
 int stub1 (struct map*,int ) ;

struct symbol *map_groups__find_symbol(struct map_groups *mg,
           u64 addr, struct map **mapp)
{
 struct map *map = map_groups__find(mg, addr);


 if (map != ((void*)0) && map__load(map) >= 0) {
  if (mapp != ((void*)0))
   *mapp = map;
  return map__find_symbol(map, map->map_ip(map, addr));
 }

 return ((void*)0);
}
