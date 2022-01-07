
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_dat; } ;
struct inode {TYPE_1__* i_sb; int i_mapping; } ;
struct buffer_head {int b_page; scalar_t__ b_blocknr; int b_end_io; int b_bdev; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int s_bdev; struct the_nilfs* s_fs_info; } ;


 int ENOMEM ;
 int REQ_OP_READ ;
 int brelse (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int nilfs_dat_translate (int ,scalar_t__,scalar_t__*) ;
 struct buffer_head* nilfs_grab_buffer (struct inode*,int ,scalar_t__,int ) ;
 int put_page (int ) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int submit_bh (int ,int ,struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;
 int unlock_page (int ) ;

int nilfs_gccache_submit_read_data(struct inode *inode, sector_t blkoff,
       sector_t pbn, __u64 vbn,
       struct buffer_head **out_bh)
{
 struct buffer_head *bh;
 int err;

 bh = nilfs_grab_buffer(inode, inode->i_mapping, blkoff, 0);
 if (unlikely(!bh))
  return -ENOMEM;

 if (buffer_uptodate(bh))
  goto out;

 if (pbn == 0) {
  struct the_nilfs *nilfs = inode->i_sb->s_fs_info;

  err = nilfs_dat_translate(nilfs->ns_dat, vbn, &pbn);
  if (unlikely(err)) {
   brelse(bh);
   goto failed;
  }
 }

 lock_buffer(bh);
 if (buffer_uptodate(bh)) {
  unlock_buffer(bh);
  goto out;
 }

 if (!buffer_mapped(bh)) {
  bh->b_bdev = inode->i_sb->s_bdev;
  set_buffer_mapped(bh);
 }
 bh->b_blocknr = pbn;
 bh->b_end_io = end_buffer_read_sync;
 get_bh(bh);
 submit_bh(REQ_OP_READ, 0, bh);
 if (vbn)
  bh->b_blocknr = vbn;
 out:
 err = 0;
 *out_bh = bh;

 failed:
 unlock_page(bh->b_page);
 put_page(bh->b_page);
 return err;
}
