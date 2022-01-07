
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __ClearPageReserved (struct page*) ;
 int __SetPageHead (struct page*) ;
 int atomic_set (int ,int) ;
 int compound_mapcount_ptr (struct page*) ;
 struct page* mem_map_next (struct page*,struct page*,int) ;
 int set_compound_head (struct page*,struct page*) ;
 int set_compound_order (struct page*,unsigned int) ;
 int set_page_count (struct page*,int ) ;

__attribute__((used)) static void prep_compound_gigantic_page(struct page *page, unsigned int order)
{
 int i;
 int nr_pages = 1 << order;
 struct page *p = page + 1;


 set_compound_order(page, order);
 __ClearPageReserved(page);
 __SetPageHead(page);
 for (i = 1; i < nr_pages; i++, p = mem_map_next(p, page, i)) {
  __ClearPageReserved(p);
  set_page_count(p, 0);
  set_compound_head(p, page);
 }
 atomic_set(compound_mapcount_ptr(page), -1);
}
