
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageDirty (struct page*) ;
 struct page* compound_head (struct page*) ;
 int put_user_page (struct page*) ;
 int put_user_pages (struct page**,unsigned long) ;
 int set_page_dirty_lock (struct page*) ;

void put_user_pages_dirty_lock(struct page **pages, unsigned long npages,
          bool make_dirty)
{
 unsigned long index;







 if (!make_dirty) {
  put_user_pages(pages, npages);
  return;
 }

 for (index = 0; index < npages; index++) {
  struct page *page = compound_head(pages[index]);
  if (!PageDirty(page))
   set_page_dirty_lock(page);
  put_user_page(page);
 }
}
