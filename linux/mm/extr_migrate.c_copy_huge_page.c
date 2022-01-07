
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hstate {int dummy; } ;


 int BUG_ON (int) ;
 int MAX_ORDER_NR_PAGES ;
 scalar_t__ PageHuge (struct page*) ;
 int PageTransHuge (struct page*) ;
 int __copy_gigantic_page (struct page*,struct page*,int) ;
 int cond_resched () ;
 int copy_highpage (struct page*,struct page*) ;
 int hpage_nr_pages (struct page*) ;
 struct hstate* page_hstate (struct page*) ;
 int pages_per_huge_page (struct hstate*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void copy_huge_page(struct page *dst, struct page *src)
{
 int i;
 int nr_pages;

 if (PageHuge(src)) {

  struct hstate *h = page_hstate(src);
  nr_pages = pages_per_huge_page(h);

  if (unlikely(nr_pages > MAX_ORDER_NR_PAGES)) {
   __copy_gigantic_page(dst, src, nr_pages);
   return;
  }
 } else {

  BUG_ON(!PageTransHuge(src));
  nr_pages = hpage_nr_pages(src);
 }

 for (i = 0; i < nr_pages; i++) {
  cond_resched();
  copy_highpage(dst + i, src + i);
 }
}
