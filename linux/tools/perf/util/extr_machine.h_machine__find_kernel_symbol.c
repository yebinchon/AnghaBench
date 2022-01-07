
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct symbol {int dummy; } ;
struct map {int dummy; } ;
struct machine {int kmaps; } ;


 struct symbol* map_groups__find_symbol (int *,int ,struct map**) ;

__attribute__((used)) static inline
struct symbol *machine__find_kernel_symbol(struct machine *machine, u64 addr,
        struct map **mapp)
{
 return map_groups__find_symbol(&machine->kmaps, addr, mapp);
}
