
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;


 int NR_ZONE_ACTIVE_ANON ;
 int NR_ZONE_ACTIVE_FILE ;
 int NR_ZONE_INACTIVE_ANON ;
 int NR_ZONE_INACTIVE_FILE ;
 scalar_t__ get_nr_swap_pages () ;
 unsigned long zone_page_state_snapshot (struct zone*,int ) ;

unsigned long zone_reclaimable_pages(struct zone *zone)
{
 unsigned long nr;

 nr = zone_page_state_snapshot(zone, NR_ZONE_INACTIVE_FILE) +
  zone_page_state_snapshot(zone, NR_ZONE_ACTIVE_FILE);
 if (get_nr_swap_pages() > 0)
  nr += zone_page_state_snapshot(zone, NR_ZONE_INACTIVE_ANON) +
   zone_page_state_snapshot(zone, NR_ZONE_ACTIVE_ANON);

 return nr;
}
