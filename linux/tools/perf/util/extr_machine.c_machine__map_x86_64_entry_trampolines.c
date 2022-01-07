
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct maps {int dummy; } ;
struct map_groups {struct maps maps; } ;
struct map {int pgoff; int (* map_ip ) (struct map*,int ) ;} ;
struct machine {int trampolines_mapped; struct map_groups kmaps; } ;
struct kmap {int name; } ;
struct extra_kernel_map {int name; scalar_t__ pgoff; scalar_t__ end; scalar_t__ start; } ;
struct dso {int dummy; } ;


 int ENTRY_TRAMPOLINE_NAME ;
 int KMAP_NAME_LEN ;
 scalar_t__ X86_64_CPU_ENTRY_AREA_PER_CPU ;
 int X86_64_CPU_ENTRY_AREA_SIZE ;
 scalar_t__ X86_64_ENTRY_TRAMPOLINE ;
 struct kmap* __map__kmap (struct map*) ;
 scalar_t__ find_entry_trampoline (struct dso*) ;
 int is_entry_trampoline (int ) ;
 scalar_t__ machine__create_extra_kernel_map (struct machine*,struct dso*,struct extra_kernel_map*) ;
 int machine__nr_cpus_avail (struct machine*) ;
 struct map* map__next (struct map*) ;
 struct map* map_groups__find (struct map_groups*,int ) ;
 struct map* maps__first (struct maps*) ;
 scalar_t__ page_size ;
 int strlcpy (int ,int ,int ) ;
 int stub1 (struct map*,int ) ;

int machine__map_x86_64_entry_trampolines(struct machine *machine,
       struct dso *kernel)
{
 struct map_groups *kmaps = &machine->kmaps;
 struct maps *maps = &kmaps->maps;
 int nr_cpus_avail, cpu;
 bool found = 0;
 struct map *map;
 u64 pgoff;





 for (map = maps__first(maps); map; map = map__next(map)) {
  struct kmap *kmap = __map__kmap(map);
  struct map *dest_map;

  if (!kmap || !is_entry_trampoline(kmap->name))
   continue;

  dest_map = map_groups__find(kmaps, map->pgoff);
  if (dest_map != map)
   map->pgoff = dest_map->map_ip(dest_map, map->pgoff);
  found = 1;
 }
 if (found || machine->trampolines_mapped)
  return 0;

 pgoff = find_entry_trampoline(kernel);
 if (!pgoff)
  return 0;

 nr_cpus_avail = machine__nr_cpus_avail(machine);


 for (cpu = 0; cpu < nr_cpus_avail; cpu++) {
  u64 va = X86_64_CPU_ENTRY_AREA_PER_CPU +
    cpu * X86_64_CPU_ENTRY_AREA_SIZE +
    X86_64_ENTRY_TRAMPOLINE;
  struct extra_kernel_map xm = {
   .start = va,
   .end = va + page_size,
   .pgoff = pgoff,
  };

  strlcpy(xm.name, ENTRY_TRAMPOLINE_NAME, KMAP_NAME_LEN);

  if (machine__create_extra_kernel_map(machine, kernel, &xm) < 0)
   return -1;
 }

 machine->trampolines_mapped = nr_cpus_avail;

 return 0;
}
