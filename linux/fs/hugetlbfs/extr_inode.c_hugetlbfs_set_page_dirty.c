
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int SetPageDirty (struct page*) ;
 struct page* compound_head (struct page*) ;

__attribute__((used)) static int hugetlbfs_set_page_dirty(struct page *page)
{
 struct page *head = compound_head(page);

 SetPageDirty(head);
 return 0;
}
