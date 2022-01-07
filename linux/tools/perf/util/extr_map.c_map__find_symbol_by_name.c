
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct map {int dso; } ;


 struct symbol* dso__find_symbol_by_name (int ,char const*) ;
 int dso__sort_by_name (int ) ;
 int dso__sorted_by_name (int ) ;
 scalar_t__ map__load (struct map*) ;

struct symbol *map__find_symbol_by_name(struct map *map, const char *name)
{
 if (map__load(map) < 0)
  return ((void*)0);

 if (!dso__sorted_by_name(map->dso))
  dso__sort_by_name(map->dso);

 return dso__find_symbol_by_name(map->dso, name);
}
