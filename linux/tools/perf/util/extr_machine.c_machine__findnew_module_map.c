
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct map {int dso; } ;
struct machine {int kmaps; } ;
struct kmod_path {int name; } ;
struct dso {int dummy; } ;


 int dso__adjust_kmod_long_name (int ,char const*) ;
 int dso__put (struct dso*) ;
 scalar_t__ kmod_path__parse_name (struct kmod_path*,char const*) ;
 struct dso* machine__findnew_module_dso (struct machine*,struct kmod_path*,char const*) ;
 struct map* map__new2 (int ,struct dso*) ;
 int map__put (struct map*) ;
 struct map* map_groups__find_by_name (int *,int ) ;
 int map_groups__insert (int *,struct map*) ;
 int zfree (int *) ;

struct map *machine__findnew_module_map(struct machine *machine, u64 start,
     const char *filename)
{
 struct map *map = ((void*)0);
 struct dso *dso = ((void*)0);
 struct kmod_path m;

 if (kmod_path__parse_name(&m, filename))
  return ((void*)0);

 map = map_groups__find_by_name(&machine->kmaps, m.name);
 if (map) {





  dso__adjust_kmod_long_name(map->dso, filename);
  goto out;
 }

 dso = machine__findnew_module_dso(machine, &m, filename);
 if (dso == ((void*)0))
  goto out;

 map = map__new2(start, dso);
 if (map == ((void*)0))
  goto out;

 map_groups__insert(&machine->kmaps, map);


 map__put(map);
out:

 dso__put(dso);
 zfree(&m.name);
 return map;
}
