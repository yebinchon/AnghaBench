
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {unsigned long* _watermark; struct free_area* free_area; } ;
struct page {int dummy; } ;
struct free_area {int dummy; } ;


 int ALLOC_CMA ;
 int BUG_ON (int) ;
 int MIGRATE_MOVABLE ;
 int PageBuddy (struct page*) ;
 size_t WMARK_MIN ;
 int __mod_zone_freepage_state (struct zone*,unsigned long,int) ;
 int del_page_from_free_area (struct page*,struct free_area*) ;
 int get_pageblock_migratetype (struct page*) ;
 int is_migrate_cma (int) ;
 int is_migrate_highatomic (int) ;
 int is_migrate_isolate (int) ;
 struct zone* page_zone (struct page*) ;
 int pageblock_nr_pages ;
 int pageblock_order ;
 int set_pageblock_migratetype (struct page*,int ) ;
 int zone_watermark_ok (struct zone*,int ,unsigned long,int ,int ) ;

int __isolate_free_page(struct page *page, unsigned int order)
{
 struct free_area *area = &page_zone(page)->free_area[order];
 unsigned long watermark;
 struct zone *zone;
 int mt;

 BUG_ON(!PageBuddy(page));

 zone = page_zone(page);
 mt = get_pageblock_migratetype(page);

 if (!is_migrate_isolate(mt)) {






  watermark = zone->_watermark[WMARK_MIN] + (1UL << order);
  if (!zone_watermark_ok(zone, 0, watermark, 0, ALLOC_CMA))
   return 0;

  __mod_zone_freepage_state(zone, -(1UL << order), mt);
 }



 del_page_from_free_area(page, area);





 if (order >= pageblock_order - 1) {
  struct page *endpage = page + (1 << order) - 1;
  for (; page < endpage; page += pageblock_nr_pages) {
   int mt = get_pageblock_migratetype(page);
   if (!is_migrate_isolate(mt) && !is_migrate_cma(mt)
       && !is_migrate_highatomic(mt))
    set_pageblock_migratetype(page,
         MIGRATE_MOVABLE);
  }
 }


 return 1UL << order;
}
