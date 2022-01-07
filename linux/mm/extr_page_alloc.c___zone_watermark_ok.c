
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {long* lowmem_reserve; struct free_area* free_area; scalar_t__ nr_reserved_highatomic; } ;
struct free_area {int * free_list; int nr_free; } ;


 unsigned int ALLOC_CMA ;
 unsigned int ALLOC_HARDER ;
 unsigned int ALLOC_HIGH ;
 unsigned int ALLOC_OOM ;
 int MAX_ORDER ;
 int MIGRATE_CMA ;
 size_t MIGRATE_HIGHATOMIC ;
 int MIGRATE_PCPTYPES ;
 int NR_FREE_CMA_PAGES ;
 int free_area_empty (struct free_area*,int) ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;
 scalar_t__ zone_page_state (struct zone*,int ) ;

bool __zone_watermark_ok(struct zone *z, unsigned int order, unsigned long mark,
    int classzone_idx, unsigned int alloc_flags,
    long free_pages)
{
 long min = mark;
 int o;
 const bool alloc_harder = (alloc_flags & (ALLOC_HARDER|ALLOC_OOM));


 free_pages -= (1 << order) - 1;

 if (alloc_flags & ALLOC_HIGH)
  min -= min / 2;






 if (likely(!alloc_harder)) {
  free_pages -= z->nr_reserved_highatomic;
 } else {






  if (alloc_flags & ALLOC_OOM)
   min -= min / 2;
  else
   min -= min / 4;
 }
 if (free_pages <= min + z->lowmem_reserve[classzone_idx])
  return 0;


 if (!order)
  return 1;


 for (o = order; o < MAX_ORDER; o++) {
  struct free_area *area = &z->free_area[o];
  int mt;

  if (!area->nr_free)
   continue;

  for (mt = 0; mt < MIGRATE_PCPTYPES; mt++) {
   if (!free_area_empty(area, mt))
    return 1;
  }







  if (alloc_harder &&
   !list_empty(&area->free_list[MIGRATE_HIGHATOMIC]))
   return 1;
 }
 return 0;
}
