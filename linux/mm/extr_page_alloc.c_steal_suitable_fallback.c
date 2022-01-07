
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {struct free_area* free_area; int flags; } ;
struct page {int dummy; } ;
struct free_area {int dummy; } ;


 unsigned int ALLOC_KSWAPD ;
 int MIGRATE_MOVABLE ;
 int ZONE_BOOSTED_WATERMARK ;
 int boost_watermark (struct zone*) ;
 int change_pageblock_range (struct page*,unsigned int,int) ;
 int get_pageblock_migratetype (struct page*) ;
 scalar_t__ is_migrate_highatomic (int) ;
 int move_freepages_block (struct zone*,struct page*,int,int*) ;
 int move_to_free_area (struct page*,struct free_area*,int) ;
 scalar_t__ page_group_by_mobility_disabled ;
 unsigned int page_order (struct page*) ;
 int pageblock_nr_pages ;
 unsigned int pageblock_order ;
 int set_bit (int ,int *) ;
 int set_pageblock_migratetype (struct page*,int) ;

__attribute__((used)) static void steal_suitable_fallback(struct zone *zone, struct page *page,
  unsigned int alloc_flags, int start_type, bool whole_block)
{
 unsigned int current_order = page_order(page);
 struct free_area *area;
 int free_pages, movable_pages, alike_pages;
 int old_block_type;

 old_block_type = get_pageblock_migratetype(page);





 if (is_migrate_highatomic(old_block_type))
  goto single_page;


 if (current_order >= pageblock_order) {
  change_pageblock_range(page, current_order, start_type);
  goto single_page;
 }






 boost_watermark(zone);
 if (alloc_flags & ALLOC_KSWAPD)
  set_bit(ZONE_BOOSTED_WATERMARK, &zone->flags);


 if (!whole_block)
  goto single_page;

 free_pages = move_freepages_block(zone, page, start_type,
      &movable_pages);





 if (start_type == MIGRATE_MOVABLE) {
  alike_pages = movable_pages;
 } else {







  if (old_block_type == MIGRATE_MOVABLE)
   alike_pages = pageblock_nr_pages
      - (free_pages + movable_pages);
  else
   alike_pages = 0;
 }


 if (!free_pages)
  goto single_page;





 if (free_pages + alike_pages >= (1 << (pageblock_order-1)) ||
   page_group_by_mobility_disabled)
  set_pageblock_migratetype(page, start_type);

 return;

single_page:
 area = &zone->free_area[current_order];
 move_to_free_area(page, area, start_type);
}
