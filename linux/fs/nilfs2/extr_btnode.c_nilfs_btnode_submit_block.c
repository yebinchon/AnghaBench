
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_dat; } ;
struct page {int dummy; } ;
struct inode {scalar_t__ i_ino; TYPE_1__* i_sb; } ;
struct buffer_head {void* b_blocknr; int b_end_io; int b_bdev; struct page* b_page; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef void* __u64 ;
struct TYPE_2__ {int s_bdev; struct the_nilfs* s_fs_info; } ;


 int BH_NILFS_Node ;
 int BIT (int ) ;
 int EBUSY ;
 int EEXIST ;
 int ENOMEM ;
 struct inode* NILFS_BTNC_I (struct address_space*) ;
 scalar_t__ NILFS_DAT_INO ;
 int REQ_RAHEAD ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int nilfs_dat_translate (int ,void*,scalar_t__*) ;
 struct buffer_head* nilfs_grab_buffer (struct inode*,struct address_space*,void*,int ) ;
 int put_page (struct page*) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int submit_bh (int,int,struct buffer_head*) ;
 int trylock_buffer (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;
 int unlock_page (struct page*) ;

int nilfs_btnode_submit_block(struct address_space *btnc, __u64 blocknr,
         sector_t pblocknr, int mode, int mode_flags,
         struct buffer_head **pbh, sector_t *submit_ptr)
{
 struct buffer_head *bh;
 struct inode *inode = NILFS_BTNC_I(btnc);
 struct page *page;
 int err;

 bh = nilfs_grab_buffer(inode, btnc, blocknr, BIT(BH_NILFS_Node));
 if (unlikely(!bh))
  return -ENOMEM;

 err = -EEXIST;
 page = bh->b_page;

 if (buffer_uptodate(bh) || buffer_dirty(bh))
  goto found;

 if (pblocknr == 0) {
  pblocknr = blocknr;
  if (inode->i_ino != NILFS_DAT_INO) {
   struct the_nilfs *nilfs = inode->i_sb->s_fs_info;


   err = nilfs_dat_translate(nilfs->ns_dat, blocknr,
        &pblocknr);
   if (unlikely(err)) {
    brelse(bh);
    goto out_locked;
   }
  }
 }

 if (mode_flags & REQ_RAHEAD) {
  if (pblocknr != *submit_ptr + 1 || !trylock_buffer(bh)) {
   err = -EBUSY;
   brelse(bh);
   goto out_locked;
  }
 } else {
  lock_buffer(bh);
 }
 if (buffer_uptodate(bh)) {
  unlock_buffer(bh);
  err = -EEXIST;
  goto found;
 }
 set_buffer_mapped(bh);
 bh->b_bdev = inode->i_sb->s_bdev;
 bh->b_blocknr = pblocknr;
 bh->b_end_io = end_buffer_read_sync;
 get_bh(bh);
 submit_bh(mode, mode_flags, bh);
 bh->b_blocknr = blocknr;
 *submit_ptr = pblocknr;
 err = 0;
found:
 *pbh = bh;

out_locked:
 unlock_page(page);
 put_page(page);
 return err;
}
