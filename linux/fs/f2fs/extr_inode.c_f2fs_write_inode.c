
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ nr_to_write; } ;
struct inode {scalar_t__ i_ino; } ;
struct f2fs_sb_info {int dummy; } ;


 int ENOSPC ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ F2FS_META_INO (struct f2fs_sb_info*) ;
 scalar_t__ F2FS_NODE_INO (struct f2fs_sb_info*) ;
 int FI_DIRTY_INODE ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_is_checkpoint_ready (struct f2fs_sb_info*) ;
 int f2fs_update_inode_page (struct inode*) ;
 int is_inode_flag_set (struct inode*,int ) ;

int f2fs_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);

 if (inode->i_ino == F2FS_NODE_INO(sbi) ||
   inode->i_ino == F2FS_META_INO(sbi))
  return 0;

 if (!is_inode_flag_set(inode, FI_DIRTY_INODE))
  return 0;

 if (!f2fs_is_checkpoint_ready(sbi))
  return -ENOSPC;





 f2fs_update_inode_page(inode);
 if (wbc && wbc->nr_to_write)
  f2fs_balance_fs(sbi, 1);
 return 0;
}
