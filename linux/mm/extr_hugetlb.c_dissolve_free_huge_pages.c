
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int dissolve_free_huge_page (struct page*) ;
 int hugepages_supported () ;
 int minimum_order ;
 struct page* pfn_to_page (unsigned long) ;

int dissolve_free_huge_pages(unsigned long start_pfn, unsigned long end_pfn)
{
 unsigned long pfn;
 struct page *page;
 int rc = 0;

 if (!hugepages_supported())
  return rc;

 for (pfn = start_pfn; pfn < end_pfn; pfn += 1 << minimum_order) {
  page = pfn_to_page(pfn);
  rc = dissolve_free_huge_page(page);
  if (rc)
   break;
 }

 return rc;
}
