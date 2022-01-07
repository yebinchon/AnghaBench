
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct TYPE_2__ {unsigned int sb_bsize; unsigned long sb_bsize_shift; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct gfs2_inode {int i_gl; struct inode i_inode; } ;
struct buffer_head {int b_size; struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_NOFS ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PageUptodate (struct page*) ;
 int REQ_META ;
 int REQ_OP_READ ;
 int REQ_PRIO ;
 int buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_new (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int create_empty_buffers (struct page*,unsigned int,int ) ;
 struct page* find_or_create_page (struct address_space*,unsigned long,int ) ;
 int flush_dcache_page (struct page*) ;
 int gfs2_block_map (struct inode*,unsigned long,struct buffer_head*,int) ;
 scalar_t__ gfs2_is_jdata (struct gfs2_inode*) ;
 int gfs2_ordered_add_inode (struct gfs2_inode*) ;
 int gfs2_trans_add_data (int ,struct buffer_head*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int ll_rw_block (int ,int,int,struct buffer_head**) ;
 int memcpy (void*,void*,unsigned int) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int put_page (struct page*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_page (struct page*) ;
 int wait_on_buffer (struct buffer_head*) ;
 int zero_user (struct page*,unsigned int,int ) ;

__attribute__((used)) static int gfs2_write_buf_to_page(struct gfs2_inode *ip, unsigned long index,
      unsigned off, void *buf, unsigned bytes)
{
 struct inode *inode = &ip->i_inode;
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct address_space *mapping = inode->i_mapping;
 struct page *page;
 struct buffer_head *bh;
 void *kaddr;
 u64 blk;
 unsigned bsize = sdp->sd_sb.sb_bsize, bnum = 0, boff = 0;
 unsigned to_write = bytes, pg_off = off;
 int done = 0;

 blk = index << (PAGE_SHIFT - sdp->sd_sb.sb_bsize_shift);
 boff = off % bsize;

 page = find_or_create_page(mapping, index, GFP_NOFS);
 if (!page)
  return -ENOMEM;
 if (!page_has_buffers(page))
  create_empty_buffers(page, bsize, 0);

 bh = page_buffers(page);
 while (!done) {

  if (pg_off >= ((bnum * bsize) + bsize)) {
   bh = bh->b_this_page;
   bnum++;
   blk++;
   continue;
  }
  if (!buffer_mapped(bh)) {
   gfs2_block_map(inode, blk, bh, 1);
   if (!buffer_mapped(bh))
    goto unlock_out;

   if (buffer_new(bh))
    zero_user(page, bnum * bsize, bh->b_size);
  }
  if (PageUptodate(page))
   set_buffer_uptodate(bh);
  if (!buffer_uptodate(bh)) {
   ll_rw_block(REQ_OP_READ, REQ_META | REQ_PRIO, 1, &bh);
   wait_on_buffer(bh);
   if (!buffer_uptodate(bh))
    goto unlock_out;
  }
  if (gfs2_is_jdata(ip))
   gfs2_trans_add_data(ip->i_gl, bh);
  else
   gfs2_ordered_add_inode(ip);


  if (to_write > (bsize - boff)) {
   pg_off += (bsize - boff);
   to_write -= (bsize - boff);
   boff = pg_off % bsize;
   continue;
  }
  done = 1;
 }


 kaddr = kmap_atomic(page);
 memcpy(kaddr + off, buf, bytes);
 flush_dcache_page(page);
 kunmap_atomic(kaddr);
 unlock_page(page);
 put_page(page);

 return 0;

unlock_out:
 unlock_page(page);
 put_page(page);
 return -EIO;
}
