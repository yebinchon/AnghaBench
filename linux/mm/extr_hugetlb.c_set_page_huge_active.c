
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageHeadHuge (struct page*) ;
 int SetPagePrivate (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;

__attribute__((used)) static void set_page_huge_active(struct page *page)
{
 VM_BUG_ON_PAGE(!PageHeadHuge(page), page);
 SetPagePrivate(&page[1]);
}
