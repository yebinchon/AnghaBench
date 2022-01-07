
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct symbol {int start; } ;
struct ref_reloc_sym {scalar_t__ unrelocated_addr; scalar_t__ addr; int name; } ;
struct map {int start; scalar_t__ reloc; scalar_t__ (* unmap_ip ) (struct map*,int ) ;} ;


 int ENOENT ;
 int host_machine ;
 struct ref_reloc_sym* kernel_get_ref_reloc_sym () ;
 struct symbol* machine__find_kernel_symbol_by_name (int ,char const*,struct map**) ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ stub1 (struct map*,int ) ;

__attribute__((used)) static int kernel_get_symbol_address_by_name(const char *name, u64 *addr,
          bool reloc, bool reladdr)
{
 struct ref_reloc_sym *reloc_sym;
 struct symbol *sym;
 struct map *map;


 reloc_sym = kernel_get_ref_reloc_sym();
 if (reloc_sym && strcmp(name, reloc_sym->name) == 0)
  *addr = (reloc) ? reloc_sym->addr : reloc_sym->unrelocated_addr;
 else {
  sym = machine__find_kernel_symbol_by_name(host_machine, name, &map);
  if (!sym)
   return -ENOENT;
  *addr = map->unmap_ip(map, sym->start) -
   ((reloc) ? 0 : map->reloc) -
   ((reladdr) ? map->start : 0);
 }
 return 0;
}
