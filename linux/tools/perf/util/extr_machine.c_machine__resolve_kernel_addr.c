
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {char* name; int start; } ;
struct map {unsigned long long (* unmap_ip ) (struct map*,int ) ;TYPE_1__* dso; } ;
struct machine {int dummy; } ;
struct TYPE_2__ {scalar_t__ short_name; } ;


 scalar_t__ __map__is_kmodule (struct map*) ;
 struct symbol* machine__find_kernel_symbol (struct machine*,unsigned long long,struct map**) ;
 unsigned long long stub1 (struct map*,int ) ;

char *machine__resolve_kernel_addr(void *vmachine, unsigned long long *addrp, char **modp)
{
 struct machine *machine = vmachine;
 struct map *map;
 struct symbol *sym = machine__find_kernel_symbol(machine, *addrp, &map);

 if (sym == ((void*)0))
  return ((void*)0);

 *modp = __map__is_kmodule(map) ? (char *)map->dso->short_name : ((void*)0);
 *addrp = map->unmap_ip(map, sym->start);
 return sym->name;
}
