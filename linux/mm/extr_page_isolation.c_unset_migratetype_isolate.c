
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lock; int nr_isolate_pageblock; } ;
struct page {int dummy; } ;


 scalar_t__ PageBuddy (struct page*) ;
 int __GFP_MOVABLE ;
 unsigned long __find_buddy_pfn (unsigned long,unsigned int) ;
 int __free_pages (struct page*,unsigned int) ;
 int __isolate_free_page (struct page*,unsigned int) ;
 int __mod_zone_freepage_state (struct zone*,unsigned long,unsigned int) ;
 int is_migrate_isolate_page (struct page*) ;
 unsigned long move_freepages_block (struct zone*,struct page*,unsigned int,int *) ;
 unsigned int page_order (struct page*) ;
 unsigned long page_to_pfn (struct page*) ;
 struct zone* page_zone (struct page*) ;
 unsigned int pageblock_order ;
 scalar_t__ pfn_valid_within (unsigned long) ;
 int post_alloc_hook (struct page*,unsigned int,int ) ;
 int set_pageblock_migratetype (struct page*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void unset_migratetype_isolate(struct page *page, unsigned migratetype)
{
 struct zone *zone;
 unsigned long flags, nr_pages;
 bool isolated_page = 0;
 unsigned int order;
 unsigned long pfn, buddy_pfn;
 struct page *buddy;

 zone = page_zone(page);
 spin_lock_irqsave(&zone->lock, flags);
 if (!is_migrate_isolate_page(page))
  goto out;
 if (PageBuddy(page)) {
  order = page_order(page);
  if (order >= pageblock_order) {
   pfn = page_to_pfn(page);
   buddy_pfn = __find_buddy_pfn(pfn, order);
   buddy = page + (buddy_pfn - pfn);

   if (pfn_valid_within(buddy_pfn) &&
       !is_migrate_isolate_page(buddy)) {
    __isolate_free_page(page, order);
    isolated_page = 1;
   }
  }
 }






 if (!isolated_page) {
  nr_pages = move_freepages_block(zone, page, migratetype, ((void*)0));
  __mod_zone_freepage_state(zone, nr_pages, migratetype);
 }
 set_pageblock_migratetype(page, migratetype);
 zone->nr_isolate_pageblock--;
out:
 spin_unlock_irqrestore(&zone->lock, flags);
 if (isolated_page) {
  post_alloc_hook(page, order, __GFP_MOVABLE);
  __free_pages(page, order);
 }
}
