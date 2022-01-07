
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {scalar_t__ b_assoc_map; struct buffer_head* b_this_page; } ;


 int __clear_page_buffers (struct page*) ;
 int __remove_assoc_queue (struct buffer_head*) ;
 scalar_t__ buffer_busy (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;

__attribute__((used)) static int
drop_buffers(struct page *page, struct buffer_head **buffers_to_free)
{
 struct buffer_head *head = page_buffers(page);
 struct buffer_head *bh;

 bh = head;
 do {
  if (buffer_busy(bh))
   goto failed;
  bh = bh->b_this_page;
 } while (bh != head);

 do {
  struct buffer_head *next = bh->b_this_page;

  if (bh->b_assoc_map)
   __remove_assoc_queue(bh);
  bh = next;
 } while (bh != head);
 *buffers_to_free = head;
 __clear_page_buffers(page);
 return 1;
failed:
 return 0;
}
