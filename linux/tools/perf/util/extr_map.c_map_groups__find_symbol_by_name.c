
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct map_groups {int maps; } ;
struct map {int dummy; } ;


 struct symbol* maps__find_symbol_by_name (int *,char const*,struct map**) ;

struct symbol *map_groups__find_symbol_by_name(struct map_groups *mg,
            const char *name,
            struct map **mapp)
{
 return maps__find_symbol_by_name(&mg->maps, name, mapp);
}
