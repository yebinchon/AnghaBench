
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;

int inode_needs_sync(struct inode *inode)
{
 if (IS_SYNC(inode))
  return 1;
 if (S_ISDIR(inode->i_mode) && IS_DIRSYNC(inode))
  return 1;
 return 0;
}
