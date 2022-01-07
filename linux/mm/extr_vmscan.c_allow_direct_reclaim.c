
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zone {int dummy; } ;
struct TYPE_3__ {scalar_t__ kswapd_failures; int kswapd_wait; int kswapd_classzone_idx; struct zone* node_zones; } ;
typedef TYPE_1__ pg_data_t ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;


 scalar_t__ MAX_RECLAIM_RETRIES ;
 int NR_FREE_PAGES ;
 int ZONE_NORMAL ;
 int managed_zone (struct zone*) ;
 int min (int ,int) ;
 scalar_t__ min_wmark_pages (struct zone*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;
 scalar_t__ zone_page_state (struct zone*,int ) ;
 int zone_reclaimable_pages (struct zone*) ;

__attribute__((used)) static bool allow_direct_reclaim(pg_data_t *pgdat)
{
 struct zone *zone;
 unsigned long pfmemalloc_reserve = 0;
 unsigned long free_pages = 0;
 int i;
 bool wmark_ok;

 if (pgdat->kswapd_failures >= MAX_RECLAIM_RETRIES)
  return 1;

 for (i = 0; i <= ZONE_NORMAL; i++) {
  zone = &pgdat->node_zones[i];
  if (!managed_zone(zone))
   continue;

  if (!zone_reclaimable_pages(zone))
   continue;

  pfmemalloc_reserve += min_wmark_pages(zone);
  free_pages += zone_page_state(zone, NR_FREE_PAGES);
 }


 if (!pfmemalloc_reserve)
  return 1;

 wmark_ok = free_pages > pfmemalloc_reserve / 2;


 if (!wmark_ok && waitqueue_active(&pgdat->kswapd_wait)) {
  pgdat->kswapd_classzone_idx = min(pgdat->kswapd_classzone_idx,
      (enum zone_type)ZONE_NORMAL);
  wake_up_interruptible(&pgdat->kswapd_wait);
 }

 return wmark_ok;
}
