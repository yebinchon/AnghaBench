
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOTEMPTY ;
 struct inode* d_inode (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int simple_empty (struct dentry*) ;
 int simple_unlink (struct inode*,struct dentry*) ;

int simple_rmdir(struct inode *dir, struct dentry *dentry)
{
 if (!simple_empty(dentry))
  return -ENOTEMPTY;

 drop_nlink(d_inode(dentry));
 simple_unlink(dir, dentry);
 drop_nlink(dir);
 return 0;
}
