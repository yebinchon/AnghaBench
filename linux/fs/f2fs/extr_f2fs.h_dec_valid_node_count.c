
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_blocks; int i_ino; } ;
struct f2fs_sb_info {scalar_t__ reserved_blocks; scalar_t__ current_reserved_blocks; int stat_lock; int total_valid_block_count; int total_valid_node_count; } ;


 int SBI_NEED_FSCK ;
 int dquot_free_inode (struct inode*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int f2fs_i_blocks_write (struct inode*,int,int,int) ;
 int f2fs_warn (struct f2fs_sb_info*,char*,int ,unsigned long long) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void dec_valid_node_count(struct f2fs_sb_info *sbi,
     struct inode *inode, bool is_inode)
{
 spin_lock(&sbi->stat_lock);

 f2fs_bug_on(sbi, !sbi->total_valid_block_count);
 f2fs_bug_on(sbi, !sbi->total_valid_node_count);

 sbi->total_valid_node_count--;
 sbi->total_valid_block_count--;
 if (sbi->reserved_blocks &&
  sbi->current_reserved_blocks < sbi->reserved_blocks)
  sbi->current_reserved_blocks++;

 spin_unlock(&sbi->stat_lock);

 if (is_inode) {
  dquot_free_inode(inode);
 } else {
  if (unlikely(inode->i_blocks == 0)) {
   f2fs_warn(sbi, "Inconsistent i_blocks, ino:%lu, iblocks:%llu",
      inode->i_ino,
      (unsigned long long)inode->i_blocks);
   set_sbi_flag(sbi, SBI_NEED_FSCK);
   return;
  }
  f2fs_i_blocks_write(inode, 1, 0, 1);
 }
}
