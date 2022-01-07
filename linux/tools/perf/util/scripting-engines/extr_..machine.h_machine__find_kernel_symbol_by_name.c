
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct map {int dummy; } ;
struct machine {int kmaps; } ;


 struct symbol* map_groups__find_symbol_by_name (int *,char const*,struct map**) ;

__attribute__((used)) static inline
struct symbol *machine__find_kernel_symbol_by_name(struct machine *machine,
         const char *name,
         struct map **mapp)
{
 return map_groups__find_symbol_by_name(&machine->kmaps, name, mapp);
}
