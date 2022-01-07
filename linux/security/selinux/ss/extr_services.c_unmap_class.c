
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct selinux_map {size_t size; TYPE_1__* mapping; } ;
struct TYPE_2__ {size_t value; } ;



__attribute__((used)) static u16 unmap_class(struct selinux_map *map, u16 tclass)
{
 if (tclass < map->size)
  return map->mapping[tclass].value;

 return tclass;
}
