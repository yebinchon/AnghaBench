
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct f2fs_sb_info {unsigned int total_valid_block_count; unsigned int current_reserved_blocks; unsigned int user_block_count; int total_valid_node_count; unsigned int total_node_count; int alloc_valid_block_count; int stat_lock; scalar_t__ unusable_block_count; } ;
typedef unsigned int block_t ;
struct TYPE_2__ {scalar_t__ root_reserved_blocks; } ;


 int ENOSPC ;
 TYPE_1__ F2FS_OPTION (struct f2fs_sb_info*) ;
 int FAULT_BLOCK ;
 int SBI_CP_DISABLED ;
 int __allow_reserved_blocks (struct f2fs_sb_info*,struct inode*,int) ;
 int dquot_alloc_inode (struct inode*) ;
 int dquot_free_inode (struct inode*) ;
 int dquot_release_reservation_block (struct inode*,int) ;
 int dquot_reserve_block (struct inode*,int) ;
 int f2fs_i_blocks_write (struct inode*,int,int,int) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int f2fs_show_injection_info (int ) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int percpu_counter_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_to_inject (struct f2fs_sb_info*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int inc_valid_node_count(struct f2fs_sb_info *sbi,
     struct inode *inode, bool is_inode)
{
 block_t valid_block_count;
 unsigned int valid_node_count, user_block_count;
 int err;

 if (is_inode) {
  if (inode) {
   err = dquot_alloc_inode(inode);
   if (err)
    return err;
  }
 } else {
  err = dquot_reserve_block(inode, 1);
  if (err)
   return err;
 }

 if (time_to_inject(sbi, FAULT_BLOCK)) {
  f2fs_show_injection_info(FAULT_BLOCK);
  goto enospc;
 }

 spin_lock(&sbi->stat_lock);

 valid_block_count = sbi->total_valid_block_count +
     sbi->current_reserved_blocks + 1;

 if (!__allow_reserved_blocks(sbi, inode, 0))
  valid_block_count += F2FS_OPTION(sbi).root_reserved_blocks;
 user_block_count = sbi->user_block_count;
 if (unlikely(is_sbi_flag_set(sbi, SBI_CP_DISABLED)))
  user_block_count -= sbi->unusable_block_count;

 if (unlikely(valid_block_count > user_block_count)) {
  spin_unlock(&sbi->stat_lock);
  goto enospc;
 }

 valid_node_count = sbi->total_valid_node_count + 1;
 if (unlikely(valid_node_count > sbi->total_node_count)) {
  spin_unlock(&sbi->stat_lock);
  goto enospc;
 }

 sbi->total_valid_node_count++;
 sbi->total_valid_block_count++;
 spin_unlock(&sbi->stat_lock);

 if (inode) {
  if (is_inode)
   f2fs_mark_inode_dirty_sync(inode, 1);
  else
   f2fs_i_blocks_write(inode, 1, 1, 1);
 }

 percpu_counter_inc(&sbi->alloc_valid_block_count);
 return 0;

enospc:
 if (is_inode) {
  if (inode)
   dquot_free_inode(inode);
 } else {
  dquot_release_reservation_block(inode, 1);
 }
 return -ENOSPC;
}
