
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageBuddy (struct page*) ;
 scalar_t__ PageHWPoison (struct page*) ;
 int page_order (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid_within (unsigned long) ;

__attribute__((used)) static unsigned long
__test_page_isolated_in_pageblock(unsigned long pfn, unsigned long end_pfn,
      bool skip_hwpoisoned_pages)
{
 struct page *page;

 while (pfn < end_pfn) {
  if (!pfn_valid_within(pfn)) {
   pfn++;
   continue;
  }
  page = pfn_to_page(pfn);
  if (PageBuddy(page))





   pfn += 1 << page_order(page);
  else if (skip_hwpoisoned_pages && PageHWPoison(page))

   pfn++;
  else
   break;
 }

 return pfn;
}
