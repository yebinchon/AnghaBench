
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_ctime; int i_mtime; int i_mapping; struct super_block* i_sb; int i_mode; } ;
typedef int loff_t ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_2__ {int i_disksize; int i_mmap_sem; int i_data_sem; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EXT4_BLOCK_SIZE_BITS (struct super_block*) ;
 int EXT4_CLUSTER_SIZE (struct super_block*) ;
 int EXT4_HT_TRUNCATE ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_INODE_EXTENTS ;
 scalar_t__ EXT_MAX_BLOCKS ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int LLONG_MAX ;
 int PAGE_SIZE ;
 int PTR_ERR (int *) ;
 int SHIFT_LEFT ;
 int S_ISREG (int ) ;
 int current_time (struct inode*) ;
 int down_write (int *) ;
 int ext4_break_layouts (struct inode*) ;
 int ext4_discard_preallocations (struct inode*) ;
 int ext4_es_remove_extent (struct inode*,int,scalar_t__) ;
 int ext4_ext_remove_space (struct inode*,int,int) ;
 int ext4_ext_shift_extents (struct inode*,int *,int,int,int ) ;
 int ext4_force_commit (struct super_block*) ;
 int ext4_handle_sync (int *) ;
 int * ext4_journal_start (struct inode*,int ,unsigned int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 int ext4_update_inode_fsync_trans (int *,struct inode*,int) ;
 unsigned int ext4_writepage_trans_blocks (struct inode*) ;
 int filemap_write_and_wait_range (int ,int,int) ;
 int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int) ;
 int inode_dio_wait (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int round_down (int,int ) ;
 int trace_ext4_collapse_range (struct inode*,int,int) ;
 int truncate_pagecache (struct inode*,int) ;
 int up_write (int *) ;

int ext4_collapse_range(struct inode *inode, loff_t offset, loff_t len)
{
 struct super_block *sb = inode->i_sb;
 ext4_lblk_t punch_start, punch_stop;
 handle_t *handle;
 unsigned int credits;
 loff_t new_size, ioffset;
 int ret;






 if (!ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))
  return -EOPNOTSUPP;


 if (offset & (EXT4_CLUSTER_SIZE(sb) - 1) ||
     len & (EXT4_CLUSTER_SIZE(sb) - 1))
  return -EINVAL;

 if (!S_ISREG(inode->i_mode))
  return -EINVAL;

 trace_ext4_collapse_range(inode, offset, len);

 punch_start = offset >> EXT4_BLOCK_SIZE_BITS(sb);
 punch_stop = (offset + len) >> EXT4_BLOCK_SIZE_BITS(sb);


 if (ext4_should_journal_data(inode)) {
  ret = ext4_force_commit(inode->i_sb);
  if (ret)
   return ret;
 }

 inode_lock(inode);




 if (offset + len >= i_size_read(inode)) {
  ret = -EINVAL;
  goto out_mutex;
 }


 if (!ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)) {
  ret = -EOPNOTSUPP;
  goto out_mutex;
 }


 inode_dio_wait(inode);





 down_write(&EXT4_I(inode)->i_mmap_sem);

 ret = ext4_break_layouts(inode);
 if (ret)
  goto out_mmap;





 ioffset = round_down(offset, PAGE_SIZE);




 ret = filemap_write_and_wait_range(inode->i_mapping, ioffset, offset);
 if (ret)
  goto out_mmap;





 ret = filemap_write_and_wait_range(inode->i_mapping, offset + len,
        LLONG_MAX);
 if (ret)
  goto out_mmap;
 truncate_pagecache(inode, ioffset);

 credits = ext4_writepage_trans_blocks(inode);
 handle = ext4_journal_start(inode, EXT4_HT_TRUNCATE, credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  goto out_mmap;
 }

 down_write(&EXT4_I(inode)->i_data_sem);
 ext4_discard_preallocations(inode);

 ret = ext4_es_remove_extent(inode, punch_start,
        EXT_MAX_BLOCKS - punch_start);
 if (ret) {
  up_write(&EXT4_I(inode)->i_data_sem);
  goto out_stop;
 }

 ret = ext4_ext_remove_space(inode, punch_start, punch_stop - 1);
 if (ret) {
  up_write(&EXT4_I(inode)->i_data_sem);
  goto out_stop;
 }
 ext4_discard_preallocations(inode);

 ret = ext4_ext_shift_extents(inode, handle, punch_stop,
         punch_stop - punch_start, SHIFT_LEFT);
 if (ret) {
  up_write(&EXT4_I(inode)->i_data_sem);
  goto out_stop;
 }

 new_size = i_size_read(inode) - len;
 i_size_write(inode, new_size);
 EXT4_I(inode)->i_disksize = new_size;

 up_write(&EXT4_I(inode)->i_data_sem);
 if (IS_SYNC(inode))
  ext4_handle_sync(handle);
 inode->i_mtime = inode->i_ctime = current_time(inode);
 ext4_mark_inode_dirty(handle, inode);
 ext4_update_inode_fsync_trans(handle, inode, 1);

out_stop:
 ext4_journal_stop(handle);
out_mmap:
 up_write(&EXT4_I(inode)->i_mmap_sem);
out_mutex:
 inode_unlock(inode);
 return ret;
}
