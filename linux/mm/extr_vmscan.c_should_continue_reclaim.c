
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct scan_control {int reclaim_idx; int order; } ;
struct pglist_data {struct zone* node_zones; } ;




 int NR_INACTIVE_ANON ;
 int NR_INACTIVE_FILE ;
 unsigned long compact_gap (int ) ;
 int compaction_suitable (struct zone*,int ,int ,int) ;
 scalar_t__ get_nr_swap_pages () ;
 int in_reclaim_compaction (struct scan_control*) ;
 int managed_zone (struct zone*) ;
 unsigned long node_page_state (struct pglist_data*,int ) ;

__attribute__((used)) static inline bool should_continue_reclaim(struct pglist_data *pgdat,
     unsigned long nr_reclaimed,
     struct scan_control *sc)
{
 unsigned long pages_for_compaction;
 unsigned long inactive_lru_pages;
 int z;


 if (!in_reclaim_compaction(sc))
  return 0;
 if (!nr_reclaimed)
  return 0;


 for (z = 0; z <= sc->reclaim_idx; z++) {
  struct zone *zone = &pgdat->node_zones[z];
  if (!managed_zone(zone))
   continue;

  switch (compaction_suitable(zone, sc->order, 0, sc->reclaim_idx)) {
  case 128:
  case 129:
   return 0;
  default:

   ;
  }
 }





 pages_for_compaction = compact_gap(sc->order);
 inactive_lru_pages = node_page_state(pgdat, NR_INACTIVE_FILE);
 if (get_nr_swap_pages() > 0)
  inactive_lru_pages += node_page_state(pgdat, NR_INACTIVE_ANON);

 return inactive_lru_pages > pages_for_compaction;
}
