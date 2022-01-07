
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; scalar_t__ b_blocknr; struct block_device* b_bdev; int * b_private; int * b_end_io; } ;
struct block_device {int bd_inode; } ;
typedef scalar_t__ sector_t ;


 int I_BDEV (int ) ;
 int PageUptodate (struct page*) ;
 scalar_t__ blkdev_max_block (int ,int) ;
 int buffer_mapped (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;

__attribute__((used)) static sector_t
init_page_buffers(struct page *page, struct block_device *bdev,
   sector_t block, int size)
{
 struct buffer_head *head = page_buffers(page);
 struct buffer_head *bh = head;
 int uptodate = PageUptodate(page);
 sector_t end_block = blkdev_max_block(I_BDEV(bdev->bd_inode), size);

 do {
  if (!buffer_mapped(bh)) {
   bh->b_end_io = ((void*)0);
   bh->b_private = ((void*)0);
   bh->b_bdev = bdev;
   bh->b_blocknr = block;
   if (uptodate)
    set_buffer_uptodate(bh);
   if (block < end_block)
    set_buffer_mapped(bh);
  }
  block++;
  bh = bh->b_this_page;
 } while (bh != head);




 return end_block;
}
