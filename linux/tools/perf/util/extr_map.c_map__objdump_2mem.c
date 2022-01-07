
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct map {scalar_t__ reloc; TYPE_1__* dso; scalar_t__ (* unmap_ip ) (struct map*,scalar_t__) ;scalar_t__ pgoff; } ;
struct TYPE_2__ {scalar_t__ kernel; scalar_t__ text_offset; scalar_t__ rel; int adjust_symbols; } ;


 scalar_t__ DSO_TYPE_USER ;
 scalar_t__ stub1 (struct map*,scalar_t__) ;
 scalar_t__ stub2 (struct map*,scalar_t__) ;
 scalar_t__ stub3 (struct map*,scalar_t__) ;

u64 map__objdump_2mem(struct map *map, u64 ip)
{
 if (!map->dso->adjust_symbols)
  return map->unmap_ip(map, ip);

 if (map->dso->rel)
  return map->unmap_ip(map, ip + map->pgoff);





 if (map->dso->kernel == DSO_TYPE_USER)
  return map->unmap_ip(map, ip - map->dso->text_offset);

 return ip + map->reloc;
}
