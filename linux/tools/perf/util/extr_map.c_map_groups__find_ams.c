
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct addr_map_symbol {scalar_t__ addr; scalar_t__ sym; int al_addr; TYPE_1__* map; } ;
struct TYPE_4__ {scalar_t__ start; scalar_t__ end; int (* map_ip ) (TYPE_1__*,scalar_t__) ;int * groups; } ;


 scalar_t__ map__find_symbol (TYPE_1__*,int ) ;
 TYPE_1__* map_groups__find (int *,scalar_t__) ;
 int stub1 (TYPE_1__*,scalar_t__) ;

int map_groups__find_ams(struct addr_map_symbol *ams)
{
 if (ams->addr < ams->map->start || ams->addr >= ams->map->end) {
  if (ams->map->groups == ((void*)0))
   return -1;
  ams->map = map_groups__find(ams->map->groups, ams->addr);
  if (ams->map == ((void*)0))
   return -1;
 }

 ams->al_addr = ams->map->map_ip(ams->map, ams->addr);
 ams->sym = map__find_symbol(ams->map, ams->al_addr);

 return ams->sym ? 0 : -1;
}
