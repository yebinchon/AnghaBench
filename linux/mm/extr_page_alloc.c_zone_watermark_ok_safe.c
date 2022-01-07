
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {long percpu_drift_mark; } ;


 int NR_FREE_PAGES ;
 int __zone_watermark_ok (struct zone*,unsigned int,unsigned long,int,int ,long) ;
 long zone_page_state (struct zone*,int ) ;
 long zone_page_state_snapshot (struct zone*,int ) ;

bool zone_watermark_ok_safe(struct zone *z, unsigned int order,
   unsigned long mark, int classzone_idx)
{
 long free_pages = zone_page_state(z, NR_FREE_PAGES);

 if (z->percpu_drift_mark && free_pages < z->percpu_drift_mark)
  free_pages = zone_page_state_snapshot(z, NR_FREE_PAGES);

 return __zone_watermark_ok(z, order, mark, classzone_idx, 0,
        free_pages);
}
