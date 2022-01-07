
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOTEMPTY ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ f2fs_empty_dir (struct inode*) ;
 int f2fs_unlink (struct inode*,struct dentry*) ;

__attribute__((used)) static int f2fs_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);
 if (f2fs_empty_dir(inode))
  return f2fs_unlink(dir, dentry);
 return -ENOTEMPTY;
}
