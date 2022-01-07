
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct maps {int dummy; } ;
struct map {TYPE_1__* dso; } ;
struct TYPE_2__ {int short_name_len; scalar_t__ short_name; } ;


 struct map* dso__new_map (char const*) ;
 int host_machine ;
 struct map* machine__kernel_map (int ) ;
 struct maps* machine__kernel_maps (int ) ;
 struct map* map__get (struct map*) ;
 struct map* map__next (struct map*) ;
 struct map* maps__first (struct maps*) ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ strncmp (scalar_t__,char const*,int) ;

__attribute__((used)) static struct map *kernel_get_module_map(const char *module)
{
 struct maps *maps = machine__kernel_maps(host_machine);
 struct map *pos;


 if (module && strchr(module, '/'))
  return dso__new_map(module);

 if (!module) {
  pos = machine__kernel_map(host_machine);
  return map__get(pos);
 }

 for (pos = maps__first(maps); pos; pos = map__next(pos)) {

  if (strncmp(pos->dso->short_name + 1, module,
       pos->dso->short_name_len - 2) == 0 &&
      module[pos->dso->short_name_len - 2] == '\0') {
   return map__get(pos);
  }
 }
 return ((void*)0);
}
