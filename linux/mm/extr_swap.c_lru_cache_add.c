
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageActive (struct page*) ;
 int PageLRU (struct page*) ;
 scalar_t__ PageUnevictable (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int __lru_cache_add (struct page*) ;

void lru_cache_add(struct page *page)
{
 VM_BUG_ON_PAGE(PageActive(page) && PageUnevictable(page), page);
 VM_BUG_ON_PAGE(PageLRU(page), page);
 __lru_cache_add(page);
}
