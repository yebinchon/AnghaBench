
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
typedef int loff_t ;


 int EXT2_I (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int __ext2_truncate_blocks (struct inode*,int ) ;
 int dax_sem_down_write (int ) ;
 int dax_sem_up_write (int ) ;
 scalar_t__ ext2_inode_is_fast_symlink (struct inode*) ;

__attribute__((used)) static void ext2_truncate_blocks(struct inode *inode, loff_t offset)
{
 if (!(S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
     S_ISLNK(inode->i_mode)))
  return;
 if (ext2_inode_is_fast_symlink(inode))
  return;

 dax_sem_down_write(EXT2_I(inode));
 __ext2_truncate_blocks(inode, offset);
 dax_sem_up_write(EXT2_I(inode));
}
