
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {scalar_t__ i_blkbits; } ;
struct buffer_head {struct buffer_head* b_this_page; int b_blocknr; int b_bdev; int b_state; } ;
struct TYPE_2__ {struct inode* host; } ;


 scalar_t__ PAGE_SHIFT ;
 int SetPageUptodate (struct page*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int create_empty_buffers (struct page*,int ,int ) ;
 int i_blocksize (struct inode*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;

__attribute__((used)) static void
map_buffer_to_page(struct page *page, struct buffer_head *bh, int page_block)
{
 struct inode *inode = page->mapping->host;
 struct buffer_head *page_bh, *head;
 int block = 0;

 if (!page_has_buffers(page)) {




  if (inode->i_blkbits == PAGE_SHIFT &&
      buffer_uptodate(bh)) {
   SetPageUptodate(page);
   return;
  }
  create_empty_buffers(page, i_blocksize(inode), 0);
 }
 head = page_buffers(page);
 page_bh = head;
 do {
  if (block == page_block) {
   page_bh->b_state = bh->b_state;
   page_bh->b_bdev = bh->b_bdev;
   page_bh->b_blocknr = bh->b_blocknr;
   break;
  }
  page_bh = page_bh->b_this_page;
  block++;
 } while (page_bh != head);
}
