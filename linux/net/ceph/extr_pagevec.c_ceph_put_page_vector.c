
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int kvfree (struct page**) ;
 int put_page (struct page*) ;
 int set_page_dirty_lock (struct page*) ;

void ceph_put_page_vector(struct page **pages, int num_pages, bool dirty)
{
 int i;

 for (i = 0; i < num_pages; i++) {
  if (dirty)
   set_page_dirty_lock(pages[i]);
  put_page(pages[i]);
 }
 kvfree(pages);
}
