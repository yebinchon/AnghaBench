
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_ino; } ;
struct f2fs_sb_info {int dummy; } ;


 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ F2FS_META_INO (struct f2fs_sb_info*) ;
 scalar_t__ F2FS_NODE_INO (struct f2fs_sb_info*) ;
 int FI_AUTO_RECOVER ;
 int I_DIRTY_TIME ;
 int clear_inode_flag (struct inode*,int ) ;
 int f2fs_inode_dirtied (struct inode*,int) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;

__attribute__((used)) static void f2fs_dirty_inode(struct inode *inode, int flags)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);

 if (inode->i_ino == F2FS_NODE_INO(sbi) ||
   inode->i_ino == F2FS_META_INO(sbi))
  return;

 if (flags == I_DIRTY_TIME)
  return;

 if (is_inode_flag_set(inode, FI_AUTO_RECOVER))
  clear_inode_flag(inode, FI_AUTO_RECOVER);

 f2fs_inode_dirtied(inode, 0);
}
