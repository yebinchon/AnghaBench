
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct page {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {struct buffer_head* b_this_page; int b_size; } ;


 int EIO ;
 scalar_t__ PageUptodate (struct page*) ;
 int REQ_OP_READ ;
 int buffer_delay (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 int buffer_new (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clean_bdev_bh_alias (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 int create_empty_buffers (struct page*,unsigned int,int ) ;
 unsigned int i_blocksize (struct inode*) ;
 int ll_rw_block (int ,int ,int,struct buffer_head**) ;
 int map_bh (struct buffer_head*,int ,scalar_t__) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 scalar_t__ ocfs2_should_read_blk (struct inode*,struct page*,unsigned int) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int set_buffer_new (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;
 int zero_user (struct page*,unsigned int,int ) ;

int ocfs2_map_page_blocks(struct page *page, u64 *p_blkno,
     struct inode *inode, unsigned int from,
     unsigned int to, int new)
{
 int ret = 0;
 struct buffer_head *head, *bh, *wait[2], **wait_bh = wait;
 unsigned int block_end, block_start;
 unsigned int bsize = i_blocksize(inode);

 if (!page_has_buffers(page))
  create_empty_buffers(page, bsize, 0);

 head = page_buffers(page);
 for (bh = head, block_start = 0; bh != head || !block_start;
      bh = bh->b_this_page, block_start += bsize) {
  block_end = block_start + bsize;

  clear_buffer_new(bh);





  if (block_start >= to || block_end <= from) {
   if (PageUptodate(page))
    set_buffer_uptodate(bh);
   continue;
  }





  if (new)
   set_buffer_new(bh);

  if (!buffer_mapped(bh)) {
   map_bh(bh, inode->i_sb, *p_blkno);
   clean_bdev_bh_alias(bh);
  }

  if (PageUptodate(page)) {
   if (!buffer_uptodate(bh))
    set_buffer_uptodate(bh);
  } else if (!buffer_uptodate(bh) && !buffer_delay(bh) &&
      !buffer_new(bh) &&
      ocfs2_should_read_blk(inode, page, block_start) &&
      (block_start < from || block_end > to)) {
   ll_rw_block(REQ_OP_READ, 0, 1, &bh);
   *wait_bh++=bh;
  }

  *p_blkno = *p_blkno + 1;
 }




 while(wait_bh > wait) {
  wait_on_buffer(*--wait_bh);
  if (!buffer_uptodate(*wait_bh))
   ret = -EIO;
 }

 if (ret == 0 || !new)
  return ret;





 bh = head;
 block_start = 0;
 do {
  block_end = block_start + bsize;
  if (block_end <= from)
   goto next_bh;
  if (block_start >= to)
   break;

  zero_user(page, block_start, bh->b_size);
  set_buffer_uptodate(bh);
  mark_buffer_dirty(bh);

next_bh:
  block_start = block_end;
  bh = bh->b_this_page;
 } while (bh != head);

 return ret;
}
