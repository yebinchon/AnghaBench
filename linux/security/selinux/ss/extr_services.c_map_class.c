
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct selinux_map {size_t size; TYPE_1__* mapping; } ;
struct TYPE_2__ {size_t value; } ;


 size_t SECCLASS_NULL ;

__attribute__((used)) static u16 map_class(struct selinux_map *map, u16 pol_value)
{
 u16 i;

 for (i = 1; i < map->size; i++) {
  if (map->mapping[i].value == pol_value)
   return i;
 }

 return SECCLASS_NULL;
}
