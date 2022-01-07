
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;


 scalar_t__ PageUptodate (struct page*) ;
 scalar_t__ buffer_heads_over_limit ;
 int clear_buffer_dirty (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int try_to_free_buffers (struct page*) ;

__attribute__((used)) static void clean_buffers(struct page *page, unsigned first_unmapped)
{
 unsigned buffer_counter = 0;
 struct buffer_head *bh, *head;
 if (!page_has_buffers(page))
  return;
 head = page_buffers(page);
 bh = head;

 do {
  if (buffer_counter++ == first_unmapped)
   break;
  clear_buffer_dirty(bh);
  bh = bh->b_this_page;
 } while (bh != head);






 if (buffer_heads_over_limit && PageUptodate(page))
  try_to_free_buffers(page);
}
