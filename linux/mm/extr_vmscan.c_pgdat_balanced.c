
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zone {int dummy; } ;
struct TYPE_3__ {struct zone* node_zones; } ;
typedef TYPE_1__ pg_data_t ;


 unsigned long high_wmark_pages (struct zone*) ;
 int managed_zone (struct zone*) ;
 scalar_t__ zone_watermark_ok_safe (struct zone*,int,unsigned long,int) ;

__attribute__((used)) static bool pgdat_balanced(pg_data_t *pgdat, int order, int classzone_idx)
{
 int i;
 unsigned long mark = -1;
 struct zone *zone;





 for (i = 0; i <= classzone_idx; i++) {
  zone = pgdat->node_zones + i;

  if (!managed_zone(zone))
   continue;

  mark = high_wmark_pages(zone);
  if (zone_watermark_ok_safe(zone, order, mark, classzone_idx))
   return 1;
 }






 if (mark == -1)
  return 1;

 return 0;
}
