
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int ext4_inode_is_fast_symlink (struct inode*) ;

int ext4_can_truncate(struct inode *inode)
{
 if (S_ISREG(inode->i_mode))
  return 1;
 if (S_ISDIR(inode->i_mode))
  return 1;
 if (S_ISLNK(inode->i_mode))
  return !ext4_inode_is_fast_symlink(inode);
 return 0;
}
