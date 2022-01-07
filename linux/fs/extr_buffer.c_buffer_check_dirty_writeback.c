
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;


 int BUG_ON (int) ;
 int PageLocked (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_locked (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;

void buffer_check_dirty_writeback(struct page *page,
         bool *dirty, bool *writeback)
{
 struct buffer_head *head, *bh;
 *dirty = 0;
 *writeback = 0;

 BUG_ON(!PageLocked(page));

 if (!page_has_buffers(page))
  return;

 if (PageWriteback(page))
  *writeback = 1;

 head = page_buffers(page);
 bh = head;
 do {
  if (buffer_locked(bh))
   *writeback = 1;

  if (buffer_dirty(bh))
   *dirty = 1;

  bh = bh->b_this_page;
 } while (bh != head);
}
