
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 void* __page_rmapping (struct page*) ;
 struct page* compound_head (struct page*) ;

void *page_rmapping(struct page *page)
{
 page = compound_head(page);
 return __page_rmapping(page);
}
