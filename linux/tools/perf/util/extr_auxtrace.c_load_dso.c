
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dso; } ;
struct dso {int dummy; } ;


 struct dso* dso__get (int ) ;
 struct map* dso__new_map (char const*) ;
 scalar_t__ map__load (struct map*) ;
 int map__put (struct map*) ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static struct dso *load_dso(const char *name)
{
 struct map *map;
 struct dso *dso;

 map = dso__new_map(name);
 if (!map)
  return ((void*)0);

 if (map__load(map) < 0)
  pr_err("File '%s' not found or has no symbols.\n", name);

 dso = dso__get(map->dso);

 map__put(map);

 return dso;
}
