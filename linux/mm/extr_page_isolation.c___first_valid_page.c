
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 struct page* pfn_to_online_page (unsigned long) ;

__attribute__((used)) static inline struct page *
__first_valid_page(unsigned long pfn, unsigned long nr_pages)
{
 int i;

 for (i = 0; i < nr_pages; i++) {
  struct page *page;

  page = pfn_to_online_page(pfn + i);
  if (!page)
   continue;
  return page;
 }
 return ((void*)0);
}
