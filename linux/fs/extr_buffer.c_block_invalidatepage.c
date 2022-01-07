
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;


 int BUG_ON (int) ;
 unsigned int PAGE_SIZE ;
 int PageLocked (struct page*) ;
 int discard_buffer (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int try_to_release_page (struct page*,int ) ;

void block_invalidatepage(struct page *page, unsigned int offset,
     unsigned int length)
{
 struct buffer_head *head, *bh, *next;
 unsigned int curr_off = 0;
 unsigned int stop = length + offset;

 BUG_ON(!PageLocked(page));
 if (!page_has_buffers(page))
  goto out;




 BUG_ON(stop > PAGE_SIZE || stop < length);

 head = page_buffers(page);
 bh = head;
 do {
  unsigned int next_off = curr_off + bh->b_size;
  next = bh->b_this_page;




  if (next_off > stop)
   goto out;




  if (offset <= curr_off)
   discard_buffer(bh);
  curr_off = next_off;
  bh = next;
 } while (bh != head);






 if (length == PAGE_SIZE)
  try_to_release_page(page, 0);
out:
 return;
}
