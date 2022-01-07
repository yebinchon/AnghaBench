
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_sb; int ns_blocksize; int ns_bdev; } ;
struct nilfs_recovery_info {int ri_lsegs_start; int ri_super_root; } ;
struct buffer_head {int b_size; int b_data; } ;


 int BUG_ON (int) ;
 int KERN_WARNING ;
 struct buffer_head* __getblk (int ,int ,int ) ;
 int brelse (struct buffer_head*) ;
 int memset (int ,int ,int ) ;
 scalar_t__ nilfs_get_segnum_of_block (struct the_nilfs*,int ) ;
 int nilfs_msg (int ,int ,char*) ;
 int set_buffer_dirty (struct buffer_head*) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void nilfs_finish_roll_forward(struct the_nilfs *nilfs,
          struct nilfs_recovery_info *ri)
{
 struct buffer_head *bh;
 int err;

 if (nilfs_get_segnum_of_block(nilfs, ri->ri_lsegs_start) !=
     nilfs_get_segnum_of_block(nilfs, ri->ri_super_root))
  return;

 bh = __getblk(nilfs->ns_bdev, ri->ri_lsegs_start, nilfs->ns_blocksize);
 BUG_ON(!bh);
 memset(bh->b_data, 0, bh->b_size);
 set_buffer_dirty(bh);
 err = sync_dirty_buffer(bh);
 if (unlikely(err))
  nilfs_msg(nilfs->ns_sb, KERN_WARNING,
     "buffer sync write failed during post-cleaning of recovery.");
 brelse(bh);
}
