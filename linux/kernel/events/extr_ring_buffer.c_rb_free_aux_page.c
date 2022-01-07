
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int * aux_pages; } ;
struct page {int * mapping; } ;


 int ClearPagePrivate (struct page*) ;
 int __free_page (struct page*) ;
 struct page* virt_to_page (int ) ;

__attribute__((used)) static void rb_free_aux_page(struct ring_buffer *rb, int idx)
{
 struct page *page = virt_to_page(rb->aux_pages[idx]);

 ClearPagePrivate(page);
 page->mapping = ((void*)0);
 __free_page(page);
}
