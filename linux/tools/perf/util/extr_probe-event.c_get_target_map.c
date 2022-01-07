
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nsinfo {int dummy; } ;
struct map {TYPE_1__* dso; } ;
struct TYPE_2__ {int nsinfo; } ;


 struct map* dso__new_map (char const*) ;
 struct map* kernel_get_module_map (char const*) ;
 int nsinfo__get (struct nsinfo*) ;

struct map *get_target_map(const char *target, struct nsinfo *nsi, bool user)
{

 if (user) {
  struct map *map;

  map = dso__new_map(target);
  if (map && map->dso)
   map->dso->nsinfo = nsinfo__get(nsi);
  return map;
 } else {
  return kernel_get_module_map(target);
 }
}
