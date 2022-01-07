
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int compound_order (struct page*) ;
 int free_the_page (struct page*,int ) ;
 int put_page_testzero (struct page*) ;
 scalar_t__ unlikely (int ) ;
 struct page* virt_to_head_page (void*) ;

void page_frag_free(void *addr)
{
 struct page *page = virt_to_head_page(addr);

 if (unlikely(put_page_testzero(page)))
  free_the_page(page, compound_order(page));
}
