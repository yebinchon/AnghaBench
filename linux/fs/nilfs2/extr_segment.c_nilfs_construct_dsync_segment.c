
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {scalar_t__ ns_flushed_device; int ns_inode_lock; struct nilfs_sc_info* ns_writer; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_sc_info {void* sc_dsync_end; void* sc_dsync_start; struct nilfs_inode_info* sc_dsync_inode; int sc_flags; } ;
struct nilfs_inode_info {int i_state; } ;
struct inode {int dummy; } ;
typedef void* loff_t ;


 int EROFS ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_BUSY ;
 int NILFS_I_INODE_SYNC ;
 int NILFS_I_QUEUED ;
 int NILFS_SC_UNCLOSED ;
 int SC_LSEG_DSYNC ;
 int STRICT_ORDER ;
 scalar_t__ nilfs_discontinued (struct the_nilfs*) ;
 int nilfs_segctor_do_construct (struct nilfs_sc_info*,int ) ;
 int nilfs_segctor_sync (struct nilfs_sc_info*) ;
 scalar_t__ nilfs_test_opt (struct the_nilfs*,int ) ;
 int nilfs_transaction_lock (struct super_block*,struct nilfs_transaction_info*,int ) ;
 int nilfs_transaction_unlock (struct super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int nilfs_construct_dsync_segment(struct super_block *sb, struct inode *inode,
      loff_t start, loff_t end)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct nilfs_sc_info *sci = nilfs->ns_writer;
 struct nilfs_inode_info *ii;
 struct nilfs_transaction_info ti;
 int err = 0;

 if (!sci)
  return -EROFS;

 nilfs_transaction_lock(sb, &ti, 0);

 ii = NILFS_I(inode);
 if (test_bit(NILFS_I_INODE_SYNC, &ii->i_state) ||
     nilfs_test_opt(nilfs, STRICT_ORDER) ||
     test_bit(NILFS_SC_UNCLOSED, &sci->sc_flags) ||
     nilfs_discontinued(nilfs)) {
  nilfs_transaction_unlock(sb);
  err = nilfs_segctor_sync(sci);
  return err;
 }

 spin_lock(&nilfs->ns_inode_lock);
 if (!test_bit(NILFS_I_QUEUED, &ii->i_state) &&
     !test_bit(NILFS_I_BUSY, &ii->i_state)) {
  spin_unlock(&nilfs->ns_inode_lock);
  nilfs_transaction_unlock(sb);
  return 0;
 }
 spin_unlock(&nilfs->ns_inode_lock);
 sci->sc_dsync_inode = ii;
 sci->sc_dsync_start = start;
 sci->sc_dsync_end = end;

 err = nilfs_segctor_do_construct(sci, SC_LSEG_DSYNC);
 if (!err)
  nilfs->ns_flushed_device = 0;

 nilfs_transaction_unlock(sb);
 return err;
}
