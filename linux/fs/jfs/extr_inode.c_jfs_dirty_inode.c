
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int COMMIT_Dirty ;
 scalar_t__ isReadOnly (struct inode*) ;
 int jfs_err (char*) ;
 int set_cflag (int ,struct inode*) ;
 int special_file (int ) ;

void jfs_dirty_inode(struct inode *inode, int flags)
{
 static int noisy = 5;

 if (isReadOnly(inode)) {
  if (!special_file(inode->i_mode) && noisy) {



   jfs_err("jfs_dirty_inode called on read-only volume");
   jfs_err("Is remount racy?");
   noisy--;
  }
  return;
 }

 set_cflag(COMMIT_Dirty, inode);
}
