
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {int b_state; struct buffer_head* b_this_page; struct page* b_page; } ;


 int BH_Uptodate_Lock ;
 int BUG_ON (int) ;
 int SetPageError (struct page*) ;
 int bit_spin_lock (int ,int *) ;
 int bit_spin_unlock (int ,int *) ;
 scalar_t__ buffer_async_write (struct buffer_head*) ;
 int buffer_io_error (struct buffer_head*,char*) ;
 int buffer_locked (struct buffer_head*) ;
 int clear_buffer_async_write (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int end_page_writeback (struct page*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mark_buffer_write_io_error (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

void end_buffer_async_write(struct buffer_head *bh, int uptodate)
{
 unsigned long flags;
 struct buffer_head *first;
 struct buffer_head *tmp;
 struct page *page;

 BUG_ON(!buffer_async_write(bh));

 page = bh->b_page;
 if (uptodate) {
  set_buffer_uptodate(bh);
 } else {
  buffer_io_error(bh, ", lost async page write");
  mark_buffer_write_io_error(bh);
  clear_buffer_uptodate(bh);
  SetPageError(page);
 }

 first = page_buffers(page);
 local_irq_save(flags);
 bit_spin_lock(BH_Uptodate_Lock, &first->b_state);

 clear_buffer_async_write(bh);
 unlock_buffer(bh);
 tmp = bh->b_this_page;
 while (tmp != bh) {
  if (buffer_async_write(tmp)) {
   BUG_ON(!buffer_locked(tmp));
   goto still_busy;
  }
  tmp = tmp->b_this_page;
 }
 bit_spin_unlock(BH_Uptodate_Lock, &first->b_state);
 local_irq_restore(flags);
 end_page_writeback(page);
 return;

still_busy:
 bit_spin_unlock(BH_Uptodate_Lock, &first->b_state);
 local_irq_restore(flags);
 return;
}
