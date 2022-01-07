
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {scalar_t__ b_size; struct buffer_head* b_this_page; } ;
typedef int loff_t ;


 int PAGE_SIZE ;
 struct buffer_head* page_buffers (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 int reiserfs_unmap_buffer (struct buffer_head*) ;

__attribute__((used)) static void unmap_buffers(struct page *page, loff_t pos)
{
 struct buffer_head *bh;
 struct buffer_head *head;
 struct buffer_head *next;
 unsigned long tail_index;
 unsigned long cur_index;

 if (page) {
  if (page_has_buffers(page)) {
   tail_index = pos & (PAGE_SIZE - 1);
   cur_index = 0;
   head = page_buffers(page);
   bh = head;
   do {
    next = bh->b_this_page;
    cur_index += bh->b_size;
    if (cur_index > tail_index) {
     reiserfs_unmap_buffer(bh);
    }
    bh = next;
   } while (bh != head);
  }
 }
}
