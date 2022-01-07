
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_ctime; int i_mtime; int i_sb; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int ENOSPC ;
 int current_time (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 struct inode* ramfs_get_inode (int ,struct inode*,int ,int ) ;

__attribute__((used)) static int
ramfs_mknod(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t dev)
{
 struct inode * inode = ramfs_get_inode(dir->i_sb, dir, mode, dev);
 int error = -ENOSPC;

 if (inode) {
  d_instantiate(dentry, inode);
  dget(dentry);
  error = 0;
  dir->i_mtime = dir->i_ctime = current_time(dir);
 }
 return error;
}
