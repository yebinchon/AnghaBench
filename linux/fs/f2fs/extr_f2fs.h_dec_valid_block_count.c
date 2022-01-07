
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_blocks; int i_ino; } ;
struct f2fs_sb_info {scalar_t__ total_valid_block_count; scalar_t__ reserved_blocks; scalar_t__ current_reserved_blocks; int stat_lock; } ;
typedef scalar_t__ block_t ;
typedef scalar_t__ blkcnt_t ;


 scalar_t__ F2FS_LOG_SECTORS_PER_BLOCK ;
 int SBI_NEED_FSCK ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int f2fs_i_blocks_write (struct inode*,scalar_t__,int,int) ;
 int f2fs_warn (struct f2fs_sb_info*,char*,int ,unsigned long long,unsigned long long) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void dec_valid_block_count(struct f2fs_sb_info *sbi,
      struct inode *inode,
      block_t count)
{
 blkcnt_t sectors = count << F2FS_LOG_SECTORS_PER_BLOCK;

 spin_lock(&sbi->stat_lock);
 f2fs_bug_on(sbi, sbi->total_valid_block_count < (block_t) count);
 sbi->total_valid_block_count -= (block_t)count;
 if (sbi->reserved_blocks &&
  sbi->current_reserved_blocks < sbi->reserved_blocks)
  sbi->current_reserved_blocks = min(sbi->reserved_blocks,
     sbi->current_reserved_blocks + count);
 spin_unlock(&sbi->stat_lock);
 if (unlikely(inode->i_blocks < sectors)) {
  f2fs_warn(sbi, "Inconsistent i_blocks, ino:%lu, iblocks:%llu, sectors:%llu",
     inode->i_ino,
     (unsigned long long)inode->i_blocks,
     (unsigned long long)sectors);
  set_sbi_flag(sbi, SBI_NEED_FSCK);
  return;
 }
 f2fs_i_blocks_write(inode, count, 0, 1);
}
