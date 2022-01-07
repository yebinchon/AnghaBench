
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct map {scalar_t__ reloc; scalar_t__ (* unmap_ip ) (struct map*,scalar_t__) ;TYPE_1__* dso; scalar_t__ pgoff; } ;
struct kmap {TYPE_2__* kmaps; int name; } ;
struct TYPE_4__ {scalar_t__ machine; } ;
struct TYPE_3__ {scalar_t__ kernel; scalar_t__ text_offset; scalar_t__ rel; int adjust_symbols; } ;


 scalar_t__ DSO_TYPE_USER ;
 struct kmap* __map__kmap (struct map*) ;
 scalar_t__ is_entry_trampoline (int ) ;
 struct map* machine__kernel_map (scalar_t__) ;
 scalar_t__ stub1 (struct map*,scalar_t__) ;

u64 map__rip_2objdump(struct map *map, u64 rip)
{
 struct kmap *kmap = __map__kmap(map);






 if (kmap && is_entry_trampoline(kmap->name) && kmap->kmaps && kmap->kmaps->machine) {
  struct map *kernel_map = machine__kernel_map(kmap->kmaps->machine);

  if (kernel_map)
   map = kernel_map;
 }

 if (!map->dso->adjust_symbols)
  return rip;

 if (map->dso->rel)
  return rip - map->pgoff;





 if (map->dso->kernel == DSO_TYPE_USER)
  return rip + map->dso->text_offset;

 return map->unmap_ip(map, rip) - map->reloc;
}
