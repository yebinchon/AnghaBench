
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageActive (struct page*) ;
 scalar_t__ PageActive (struct page*) ;
 int __lru_cache_add (struct page*) ;

void lru_cache_add_file(struct page *page)
{
 if (PageActive(page))
  ClearPageActive(page);
 __lru_cache_add(page);
}
