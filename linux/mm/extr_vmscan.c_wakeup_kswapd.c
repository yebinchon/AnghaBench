
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct zone {TYPE_1__* zone_pgdat; } ;
struct TYPE_5__ {scalar_t__ kswapd_classzone_idx; int kswapd_order; scalar_t__ kswapd_failures; int kswapd_wait; int node_id; } ;
typedef TYPE_1__ pg_data_t ;
typedef int gfp_t ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;


 scalar_t__ MAX_NR_ZONES ;
 scalar_t__ MAX_RECLAIM_RETRIES ;
 int __GFP_DIRECT_RECLAIM ;
 int cpuset_zone_allowed (struct zone*,int) ;
 int managed_zone (struct zone*) ;
 void* max (int,int) ;
 scalar_t__ pgdat_balanced (TYPE_1__*,int,int) ;
 int pgdat_watermark_boosted (TYPE_1__*,int) ;
 int trace_mm_vmscan_wakeup_kswapd (int ,int,int,int) ;
 int waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;
 int wakeup_kcompactd (TYPE_1__*,int,int) ;

void wakeup_kswapd(struct zone *zone, gfp_t gfp_flags, int order,
     enum zone_type classzone_idx)
{
 pg_data_t *pgdat;

 if (!managed_zone(zone))
  return;

 if (!cpuset_zone_allowed(zone, gfp_flags))
  return;
 pgdat = zone->zone_pgdat;

 if (pgdat->kswapd_classzone_idx == MAX_NR_ZONES)
  pgdat->kswapd_classzone_idx = classzone_idx;
 else
  pgdat->kswapd_classzone_idx = max(pgdat->kswapd_classzone_idx,
        classzone_idx);
 pgdat->kswapd_order = max(pgdat->kswapd_order, order);
 if (!waitqueue_active(&pgdat->kswapd_wait))
  return;


 if (pgdat->kswapd_failures >= MAX_RECLAIM_RETRIES ||
     (pgdat_balanced(pgdat, order, classzone_idx) &&
      !pgdat_watermark_boosted(pgdat, classzone_idx))) {







  if (!(gfp_flags & __GFP_DIRECT_RECLAIM))
   wakeup_kcompactd(pgdat, order, classzone_idx);
  return;
 }

 trace_mm_vmscan_wakeup_kswapd(pgdat->node_id, classzone_idx, order,
          gfp_flags);
 wake_up_interruptible(&pgdat->kswapd_wait);
}
