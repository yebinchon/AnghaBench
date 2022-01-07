
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct symbol {int dummy; } ;
struct map {int dso; } ;


 struct symbol* dso__find_symbol (int ,int ) ;
 scalar_t__ map__load (struct map*) ;

struct symbol *map__find_symbol(struct map *map, u64 addr)
{
 if (map__load(map) < 0)
  return ((void*)0);

 return dso__find_symbol(map->dso, addr);
}
