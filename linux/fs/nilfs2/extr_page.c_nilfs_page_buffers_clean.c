
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;


 scalar_t__ buffer_dirty (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;

int nilfs_page_buffers_clean(struct page *page)
{
 struct buffer_head *bh, *head;

 bh = head = page_buffers(page);
 do {
  if (buffer_dirty(bh))
   return 0;
  bh = bh->b_this_page;
 } while (bh != head);
 return 1;
}
