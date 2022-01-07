
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;
struct page {int dummy; } ;


 int BUG_ON (int ) ;
 unsigned long HPAGE_PMD_NR ;
 int __free_pages (struct page*,int ) ;
 int atomic_cmpxchg (int *,int,int ) ;
 int compound_order (struct page*) ;
 int huge_zero_page ;
 int huge_zero_refcount ;
 struct page* xchg (int *,int *) ;

__attribute__((used)) static unsigned long shrink_huge_zero_page_scan(struct shrinker *shrink,
           struct shrink_control *sc)
{
 if (atomic_cmpxchg(&huge_zero_refcount, 1, 0) == 1) {
  struct page *zero_page = xchg(&huge_zero_page, ((void*)0));
  BUG_ON(zero_page == ((void*)0));
  __free_pages(zero_page, compound_order(zero_page));
  return HPAGE_PMD_NR;
 }

 return 0;
}
