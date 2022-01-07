
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int * free_area; } ;
struct page {int dummy; } ;


 int PageBuddy (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 scalar_t__ __PageMovable (struct page*) ;
 int move_to_free_area (struct page*,int *,int) ;
 unsigned int page_order (struct page*) ;
 scalar_t__ page_to_nid (struct page*) ;
 int page_to_pfn (struct page*) ;
 struct zone* page_zone (struct page*) ;
 int pfn_valid_within (int ) ;
 scalar_t__ zone_to_nid (struct zone*) ;

__attribute__((used)) static int move_freepages(struct zone *zone,
     struct page *start_page, struct page *end_page,
     int migratetype, int *num_movable)
{
 struct page *page;
 unsigned int order;
 int pages_moved = 0;

 for (page = start_page; page <= end_page;) {
  if (!pfn_valid_within(page_to_pfn(page))) {
   page++;
   continue;
  }

  if (!PageBuddy(page)) {





   if (num_movable &&
     (PageLRU(page) || __PageMovable(page)))
    (*num_movable)++;

   page++;
   continue;
  }


  VM_BUG_ON_PAGE(page_to_nid(page) != zone_to_nid(zone), page);
  VM_BUG_ON_PAGE(page_zone(page) != zone, page);

  order = page_order(page);
  move_to_free_area(page, &zone->free_area[order], migratetype);
  page += 1 << order;
  pages_moved += 1 << order;
 }

 return pages_moved;
}
