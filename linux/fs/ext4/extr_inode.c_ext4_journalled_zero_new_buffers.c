
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;
typedef int handle_t ;


 int PageUptodate (struct page*) ;
 scalar_t__ buffer_new (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 struct buffer_head* page_buffers (struct page*) ;
 int write_end_fn (int *,struct buffer_head*) ;
 int zero_user (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static void ext4_journalled_zero_new_buffers(handle_t *handle,
         struct page *page,
         unsigned from, unsigned to)
{
 unsigned int block_start = 0, block_end;
 struct buffer_head *head, *bh;

 bh = head = page_buffers(page);
 do {
  block_end = block_start + bh->b_size;
  if (buffer_new(bh)) {
   if (block_end > from && block_start < to) {
    if (!PageUptodate(page)) {
     unsigned start, size;

     start = max(from, block_start);
     size = min(to, block_end) - start;

     zero_user(page, start, size);
     write_end_fn(handle, bh);
    }
    clear_buffer_new(bh);
   }
  }
  block_start = block_end;
  bh = bh->b_this_page;
 } while (bh != head);
}
