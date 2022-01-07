
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_root {int dummy; } ;
struct module_info {scalar_t__ start; } ;
struct map_groups {int dummy; } ;
struct map {scalar_t__ start; TYPE_1__* dso; } ;
struct TYPE_2__ {int short_name; } ;


 int EINVAL ;
 struct rb_root RB_ROOT ;
 int __map__is_kmodule (struct map*) ;
 int delete_modules (struct rb_root*) ;
 struct module_info* find_module (int ,struct rb_root*) ;
 struct map* map_groups__first (struct map_groups*) ;
 struct map* map_groups__next (struct map*) ;
 int read_proc_modules (char const*,struct rb_root*) ;

__attribute__((used)) static int do_validate_kcore_modules(const char *filename,
      struct map_groups *kmaps)
{
 struct rb_root modules = RB_ROOT;
 struct map *old_map;
 int err;

 err = read_proc_modules(filename, &modules);
 if (err)
  return err;

 old_map = map_groups__first(kmaps);
 while (old_map) {
  struct map *next = map_groups__next(old_map);
  struct module_info *mi;

  if (!__map__is_kmodule(old_map)) {
   old_map = next;
   continue;
  }


  mi = find_module(old_map->dso->short_name, &modules);
  if (!mi || mi->start != old_map->start) {
   err = -EINVAL;
   goto out;
  }

  old_map = next;
 }
out:
 delete_modules(&modules);
 return err;
}
