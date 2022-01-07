
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int IS_ALIGNED (unsigned long,scalar_t__) ;
 struct page* __first_valid_page (unsigned long,scalar_t__) ;
 int is_migrate_isolate_page (struct page*) ;
 scalar_t__ pageblock_nr_pages ;
 int unset_migratetype_isolate (struct page*,unsigned int) ;

void undo_isolate_page_range(unsigned long start_pfn, unsigned long end_pfn,
       unsigned migratetype)
{
 unsigned long pfn;
 struct page *page;

 BUG_ON(!IS_ALIGNED(start_pfn, pageblock_nr_pages));
 BUG_ON(!IS_ALIGNED(end_pfn, pageblock_nr_pages));

 for (pfn = start_pfn;
      pfn < end_pfn;
      pfn += pageblock_nr_pages) {
  page = __first_valid_page(pfn, pageblock_nr_pages);
  if (!page || !is_migrate_isolate_page(page))
   continue;
  unset_migratetype_isolate(page, migratetype);
 }
}
