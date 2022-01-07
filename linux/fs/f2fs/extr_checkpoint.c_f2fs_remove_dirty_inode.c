
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct f2fs_sb_info {int * inode_lock; } ;
typedef enum inode_type { ____Placeholder_inode_type } inode_type ;


 int DATA_FLUSH ;
 int DIR_INODE ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FILE_INODE ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 int S_ISREG (int ) ;
 int __remove_dirty_inode (struct inode*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_opt (struct f2fs_sb_info*,int ) ;

void f2fs_remove_dirty_inode(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 enum inode_type type = S_ISDIR(inode->i_mode) ? DIR_INODE : FILE_INODE;

 if (!S_ISDIR(inode->i_mode) && !S_ISREG(inode->i_mode) &&
   !S_ISLNK(inode->i_mode))
  return;

 if (type == FILE_INODE && !test_opt(sbi, DATA_FLUSH))
  return;

 spin_lock(&sbi->inode_lock[type]);
 __remove_dirty_inode(inode, type);
 spin_unlock(&sbi->inode_lock[type]);
}
