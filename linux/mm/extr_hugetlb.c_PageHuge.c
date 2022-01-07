
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ compound_dtor; } ;


 scalar_t__ HUGETLB_PAGE_DTOR ;
 int PageCompound (struct page*) ;
 struct page* compound_head (struct page*) ;

int PageHuge(struct page *page)
{
 if (!PageCompound(page))
  return 0;

 page = compound_head(page);
 return page[1].compound_dtor == HUGETLB_PAGE_DTOR;
}
