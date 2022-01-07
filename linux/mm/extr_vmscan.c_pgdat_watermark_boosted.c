
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zone {scalar_t__ watermark_boost; } ;
struct TYPE_3__ {struct zone* node_zones; } ;
typedef TYPE_1__ pg_data_t ;


 int managed_zone (struct zone*) ;

__attribute__((used)) static bool pgdat_watermark_boosted(pg_data_t *pgdat, int classzone_idx)
{
 int i;
 struct zone *zone;
 for (i = classzone_idx; i >= 0; i--) {
  zone = pgdat->node_zones + i;
  if (!managed_zone(zone))
   continue;

  if (zone->watermark_boost)
   return 1;
 }

 return 0;
}
