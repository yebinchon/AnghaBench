
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long hpage_nr_pages (struct page*) ;
 unsigned long page_to_pfn (struct page*) ;

__attribute__((used)) static inline bool pfn_in_hpage(struct page *hpage, unsigned long pfn)
{
 unsigned long hpage_pfn = page_to_pfn(hpage);


 return pfn >= hpage_pfn && pfn - hpage_pfn < hpage_nr_pages(hpage);
}
