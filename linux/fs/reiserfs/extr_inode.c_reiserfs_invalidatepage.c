
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;
struct TYPE_2__ {struct inode* host; } ;


 int BUG_ON (int) ;
 int ClearPageChecked (struct page*) ;
 unsigned int PAGE_SIZE ;
 int PageLocked (struct page*) ;
 scalar_t__ invalidatepage_can_drop (struct inode*,struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int reiserfs_unmap_buffer (struct buffer_head*) ;
 int try_to_release_page (struct page*,int ) ;

__attribute__((used)) static void reiserfs_invalidatepage(struct page *page, unsigned int offset,
        unsigned int length)
{
 struct buffer_head *head, *bh, *next;
 struct inode *inode = page->mapping->host;
 unsigned int curr_off = 0;
 unsigned int stop = offset + length;
 int partial_page = (offset || length < PAGE_SIZE);
 int ret = 1;

 BUG_ON(!PageLocked(page));

 if (!partial_page)
  ClearPageChecked(page);

 if (!page_has_buffers(page))
  goto out;

 head = page_buffers(page);
 bh = head;
 do {
  unsigned int next_off = curr_off + bh->b_size;
  next = bh->b_this_page;

  if (next_off > stop)
   goto out;




  if (offset <= curr_off) {
   if (invalidatepage_can_drop(inode, bh))
    reiserfs_unmap_buffer(bh);
   else
    ret = 0;
  }
  curr_off = next_off;
  bh = next;
 } while (bh != head);






 if (!partial_page && ret) {
  ret = try_to_release_page(page, 0);

 }
out:
 return;
}
