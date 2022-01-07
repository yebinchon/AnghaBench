
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned int page_private (struct page*) ;

__attribute__((used)) static inline unsigned int page_order(struct page *page)
{

 return page_private(page);
}
