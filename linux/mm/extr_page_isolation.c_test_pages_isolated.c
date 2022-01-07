
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lock; } ;
struct page {int dummy; } ;


 int EBUSY ;
 struct page* __first_valid_page (unsigned long,unsigned long) ;
 unsigned long __test_page_isolated_in_pageblock (unsigned long,unsigned long,int) ;
 int is_migrate_isolate_page (struct page*) ;
 struct zone* page_zone (struct page*) ;
 unsigned long pageblock_nr_pages ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_test_pages_isolated (unsigned long,unsigned long,unsigned long) ;

int test_pages_isolated(unsigned long start_pfn, unsigned long end_pfn,
   bool skip_hwpoisoned_pages)
{
 unsigned long pfn, flags;
 struct page *page;
 struct zone *zone;






 for (pfn = start_pfn; pfn < end_pfn; pfn += pageblock_nr_pages) {
  page = __first_valid_page(pfn, pageblock_nr_pages);
  if (page && !is_migrate_isolate_page(page))
   break;
 }
 page = __first_valid_page(start_pfn, end_pfn - start_pfn);
 if ((pfn < end_pfn) || !page)
  return -EBUSY;

 zone = page_zone(page);
 spin_lock_irqsave(&zone->lock, flags);
 pfn = __test_page_isolated_in_pageblock(start_pfn, end_pfn,
      skip_hwpoisoned_pages);
 spin_unlock_irqrestore(&zone->lock, flags);

 trace_test_pages_isolated(start_pfn, end_pfn, pfn);

 return pfn < end_pfn ? -EBUSY : 0;
}
