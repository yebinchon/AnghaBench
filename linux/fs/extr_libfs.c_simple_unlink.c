
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mtime; int i_ctime; } ;
struct dentry {int dummy; } ;


 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int drop_nlink (struct inode*) ;

int simple_unlink(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);

 inode->i_ctime = dir->i_ctime = dir->i_mtime = current_time(inode);
 drop_nlink(inode);
 dput(dentry);
 return 0;
}
