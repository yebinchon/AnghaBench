
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_area {scalar_t__ nr_free; } ;


 int MIGRATE_TYPES ;
 scalar_t__ can_steal_fallback (unsigned int,int) ;
 int** fallbacks ;
 scalar_t__ free_area_empty (struct free_area*,int) ;

int find_suitable_fallback(struct free_area *area, unsigned int order,
   int migratetype, bool only_stealable, bool *can_steal)
{
 int i;
 int fallback_mt;

 if (area->nr_free == 0)
  return -1;

 *can_steal = 0;
 for (i = 0;; i++) {
  fallback_mt = fallbacks[migratetype][i];
  if (fallback_mt == MIGRATE_TYPES)
   break;

  if (free_area_empty(area, fallback_mt))
   continue;

  if (can_steal_fallback(order, migratetype))
   *can_steal = 1;

  if (!only_stealable)
   return fallback_mt;

  if (*can_steal)
   return fallback_mt;
 }

 return -1;
}
