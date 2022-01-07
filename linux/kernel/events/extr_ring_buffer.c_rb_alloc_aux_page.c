
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int MAX_ORDER ;
 int PERF_AUX_GFP ;
 int SetPagePrivate (struct page*) ;
 struct page* alloc_pages_node (int,int ,int) ;
 int set_page_private (struct page*,int) ;
 int split_page (struct page*,int) ;

__attribute__((used)) static struct page *rb_alloc_aux_page(int node, int order)
{
 struct page *page;

 if (order > MAX_ORDER)
  order = MAX_ORDER;

 do {
  page = alloc_pages_node(node, PERF_AUX_GFP, order);
 } while (!page && order--);

 if (page && order) {






  split_page(page, order);
  SetPagePrivate(page);
  set_page_private(page, order);
 }

 return page;
}
