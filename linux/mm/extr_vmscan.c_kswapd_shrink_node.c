
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct zone {int dummy; } ;
struct scan_control {scalar_t__ nr_to_reclaim; int reclaim_idx; scalar_t__ nr_reclaimed; scalar_t__ nr_scanned; scalar_t__ order; } ;
struct TYPE_4__ {struct zone* node_zones; } ;
typedef TYPE_1__ pg_data_t ;


 int SWAP_CLUSTER_MAX ;
 scalar_t__ compact_gap (scalar_t__) ;
 int high_wmark_pages (struct zone*) ;
 int managed_zone (struct zone*) ;
 scalar_t__ max (int ,int ) ;
 int shrink_node (TYPE_1__*,struct scan_control*) ;

__attribute__((used)) static bool kswapd_shrink_node(pg_data_t *pgdat,
          struct scan_control *sc)
{
 struct zone *zone;
 int z;


 sc->nr_to_reclaim = 0;
 for (z = 0; z <= sc->reclaim_idx; z++) {
  zone = pgdat->node_zones + z;
  if (!managed_zone(zone))
   continue;

  sc->nr_to_reclaim += max(high_wmark_pages(zone), SWAP_CLUSTER_MAX);
 }





 shrink_node(pgdat, sc);
 if (sc->order && sc->nr_reclaimed >= compact_gap(sc->order))
  sc->order = 0;

 return sc->nr_scanned >= sc->nr_to_reclaim;
}
