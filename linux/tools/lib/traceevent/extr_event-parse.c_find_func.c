
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_handle {TYPE_1__* func_resolver; } ;
struct func_map {unsigned long long addr; int * func; int * mod; } ;
struct TYPE_2__ {int priv; int * (* func ) (int ,unsigned long long*,int **) ;struct func_map map; } ;


 struct func_map* __find_func (struct tep_handle*,unsigned long long) ;
 int * stub1 (int ,unsigned long long*,int **) ;

__attribute__((used)) static struct func_map *
find_func(struct tep_handle *tep, unsigned long long addr)
{
 struct func_map *map;

 if (!tep->func_resolver)
  return __find_func(tep, addr);

 map = &tep->func_resolver->map;
 map->mod = ((void*)0);
 map->addr = addr;
 map->func = tep->func_resolver->func(tep->func_resolver->priv,
          &map->addr, &map->mod);
 if (map->func == ((void*)0))
  return ((void*)0);

 return map;
}
