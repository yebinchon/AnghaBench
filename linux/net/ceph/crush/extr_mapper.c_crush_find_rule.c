
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crush_map {size_t max_rules; TYPE_2__** rules; } ;
typedef size_t __u32 ;
struct TYPE_3__ {int ruleset; int type; int min_size; int max_size; } ;
struct TYPE_4__ {TYPE_1__ mask; } ;



int crush_find_rule(const struct crush_map *map, int ruleset, int type, int size)
{
 __u32 i;

 for (i = 0; i < map->max_rules; i++) {
  if (map->rules[i] &&
      map->rules[i]->mask.ruleset == ruleset &&
      map->rules[i]->mask.type == type &&
      map->rules[i]->mask.min_size <= size &&
      map->rules[i]->mask.max_size >= size)
   return i;
 }
 return -1;
}
