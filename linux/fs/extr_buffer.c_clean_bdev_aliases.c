
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;
struct inode {int i_blkbits; struct address_space* i_mapping; } ;
struct buffer_head {int b_blocknr; struct buffer_head* b_this_page; } ;
struct block_device {struct inode* bd_inode; } ;
struct address_space {int dummy; } ;
typedef int sector_t ;
typedef int pgoff_t ;


 int PAGE_SHIFT ;
 int buffer_mapped (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_req (struct buffer_head*) ;
 int cond_resched () ;
 int lock_page (struct page*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*) ;
 scalar_t__ pagevec_lookup_range (struct pagevec*,struct address_space*,int*,int) ;
 int pagevec_release (struct pagevec*) ;
 int unlock_page (struct page*) ;
 int wait_on_buffer (struct buffer_head*) ;

void clean_bdev_aliases(struct block_device *bdev, sector_t block, sector_t len)
{
 struct inode *bd_inode = bdev->bd_inode;
 struct address_space *bd_mapping = bd_inode->i_mapping;
 struct pagevec pvec;
 pgoff_t index = block >> (PAGE_SHIFT - bd_inode->i_blkbits);
 pgoff_t end;
 int i, count;
 struct buffer_head *bh;
 struct buffer_head *head;

 end = (block + len - 1) >> (PAGE_SHIFT - bd_inode->i_blkbits);
 pagevec_init(&pvec);
 while (pagevec_lookup_range(&pvec, bd_mapping, &index, end)) {
  count = pagevec_count(&pvec);
  for (i = 0; i < count; i++) {
   struct page *page = pvec.pages[i];

   if (!page_has_buffers(page))
    continue;





   lock_page(page);

   if (!page_has_buffers(page))
    goto unlock_page;
   head = page_buffers(page);
   bh = head;
   do {
    if (!buffer_mapped(bh) || (bh->b_blocknr < block))
     goto next;
    if (bh->b_blocknr >= block + len)
     break;
    clear_buffer_dirty(bh);
    wait_on_buffer(bh);
    clear_buffer_req(bh);
next:
    bh = bh->b_this_page;
   } while (bh != head);
unlock_page:
   unlock_page(page);
  }
  pagevec_release(&pvec);
  cond_resched();

  if (index > end || !index)
   break;
 }
}
