
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageHead (struct page*) ;
 scalar_t__ free_huge_page ;
 scalar_t__ get_compound_page_dtor (struct page*) ;

int PageHeadHuge(struct page *page_head)
{
 if (!PageHead(page_head))
  return 0;

 return get_compound_page_dtor(page_head) == free_huge_page;
}
