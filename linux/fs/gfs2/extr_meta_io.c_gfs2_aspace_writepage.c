
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; } ;
struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;


 int BUG_ON (int) ;
 int PageLocked (struct page*) ;
 int PageWriteback (struct page*) ;
 int REQ_META ;
 int REQ_OP_WRITE ;
 int REQ_PRIO ;
 scalar_t__ WB_SYNC_NONE ;
 scalar_t__ buffer_async_write (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 int end_page_writeback (struct page*) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_async_write (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int set_page_writeback (struct page*) ;
 int submit_bh (int ,int,struct buffer_head*) ;
 scalar_t__ test_clear_buffer_dirty (struct buffer_head*) ;
 int trylock_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;
 int unlock_page (struct page*) ;
 int wbc_to_write_flags (struct writeback_control*) ;

__attribute__((used)) static int gfs2_aspace_writepage(struct page *page, struct writeback_control *wbc)
{
 struct buffer_head *bh, *head;
 int nr_underway = 0;
 int write_flags = REQ_META | REQ_PRIO | wbc_to_write_flags(wbc);

 BUG_ON(!PageLocked(page));
 BUG_ON(!page_has_buffers(page));

 head = page_buffers(page);
 bh = head;

 do {
  if (!buffer_mapped(bh))
   continue;







  if (wbc->sync_mode != WB_SYNC_NONE) {
   lock_buffer(bh);
  } else if (!trylock_buffer(bh)) {
   redirty_page_for_writepage(wbc, page);
   continue;
  }
  if (test_clear_buffer_dirty(bh)) {
   mark_buffer_async_write(bh);
  } else {
   unlock_buffer(bh);
  }
 } while ((bh = bh->b_this_page) != head);





 BUG_ON(PageWriteback(page));
 set_page_writeback(page);

 do {
  struct buffer_head *next = bh->b_this_page;
  if (buffer_async_write(bh)) {
   submit_bh(REQ_OP_WRITE, write_flags, bh);
   nr_underway++;
  }
  bh = next;
 } while (bh != head);
 unlock_page(page);

 if (nr_underway == 0)
  end_page_writeback(page);

 return 0;
}
