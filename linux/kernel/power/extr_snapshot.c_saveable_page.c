
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct page {int dummy; } ;


 int BUG_ON (int ) ;
 int PageHighMem (struct page*) ;
 scalar_t__ PageOffline (struct page*) ;
 scalar_t__ PageReserved (struct page*) ;
 int kernel_page_present (struct page*) ;
 scalar_t__ page_is_guard (struct page*) ;
 struct zone* page_zone (struct page*) ;
 scalar_t__ pfn_is_nosave (unsigned long) ;
 struct page* pfn_to_online_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 scalar_t__ swsusp_page_is_forbidden (struct page*) ;
 scalar_t__ swsusp_page_is_free (struct page*) ;

__attribute__((used)) static struct page *saveable_page(struct zone *zone, unsigned long pfn)
{
 struct page *page;

 if (!pfn_valid(pfn))
  return ((void*)0);

 page = pfn_to_online_page(pfn);
 if (!page || page_zone(page) != zone)
  return ((void*)0);

 BUG_ON(PageHighMem(page));

 if (swsusp_page_is_forbidden(page) || swsusp_page_is_free(page))
  return ((void*)0);

 if (PageOffline(page))
  return ((void*)0);

 if (PageReserved(page)
     && (!kernel_page_present(page) || pfn_is_nosave(pfn)))
  return ((void*)0);

 if (page_is_guard(page))
  return ((void*)0);

 return page;
}
