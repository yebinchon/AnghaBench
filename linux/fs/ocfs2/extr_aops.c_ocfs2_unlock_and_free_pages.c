
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int mark_page_accessed (struct page*) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

void ocfs2_unlock_and_free_pages(struct page **pages, int num_pages)
{
 int i;

 for(i = 0; i < num_pages; i++) {
  if (pages[i]) {
   unlock_page(pages[i]);
   mark_page_accessed(pages[i]);
   put_page(pages[i]);
  }
 }
}
