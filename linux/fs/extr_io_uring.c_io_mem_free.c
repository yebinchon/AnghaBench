
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int free_compound_page (struct page*) ;
 scalar_t__ put_page_testzero (struct page*) ;
 struct page* virt_to_head_page (void*) ;

__attribute__((used)) static void io_mem_free(void *ptr)
{
 struct page *page;

 if (!ptr)
  return;

 page = virt_to_head_page(ptr);
 if (put_page_testzero(page))
  free_compound_page(page);
}
