
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int HPAGE_PMD_NR ;
 scalar_t__ PageSwapCache (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 int page_count (struct page*) ;
 int page_has_private (struct page*) ;

__attribute__((used)) static inline int is_page_cache_freeable(struct page *page)
{





 int page_cache_pins = PageTransHuge(page) && PageSwapCache(page) ?
  HPAGE_PMD_NR : 1;
 return page_count(page) - page_has_private(page) == 1 + page_cache_pins;
}
