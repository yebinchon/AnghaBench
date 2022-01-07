
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct pglist_data {int totalreserve_pages; struct zone* node_zones; } ;


 int MAX_NR_ZONES ;
 int NR_ACTIVE_FILE ;
 int NR_FREE_PAGES ;
 int NR_INACTIVE_FILE ;
 scalar_t__ min (unsigned long,int ) ;
 scalar_t__ node_page_state (struct pglist_data*,int ) ;
 int populated_zone (struct zone*) ;
 scalar_t__ zone_page_state (struct zone*,int ) ;

__attribute__((used)) static unsigned long node_dirtyable_memory(struct pglist_data *pgdat)
{
 unsigned long nr_pages = 0;
 int z;

 for (z = 0; z < MAX_NR_ZONES; z++) {
  struct zone *zone = pgdat->node_zones + z;

  if (!populated_zone(zone))
   continue;

  nr_pages += zone_page_state(zone, NR_FREE_PAGES);
 }






 nr_pages -= min(nr_pages, pgdat->totalreserve_pages);

 nr_pages += node_page_state(pgdat, NR_INACTIVE_FILE);
 nr_pages += node_page_state(pgdat, NR_ACTIVE_FILE);

 return nr_pages;
}
