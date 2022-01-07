
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageHead (struct page*) ;
 int PageHuge (struct page*) ;
 scalar_t__ PagePrivate (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;

bool page_huge_active(struct page *page)
{
 VM_BUG_ON_PAGE(!PageHuge(page), page);
 return PageHead(page) && PagePrivate(&page[1]);
}
