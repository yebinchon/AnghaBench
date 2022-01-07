
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mtime; int i_ctime; } ;
struct dentry {int dummy; } ;


 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 int ihold (struct inode*) ;
 int inc_nlink (struct inode*) ;

int simple_link(struct dentry *old_dentry, struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = d_inode(old_dentry);

 inode->i_ctime = dir->i_ctime = dir->i_mtime = current_time(inode);
 inc_nlink(inode);
 ihold(inode);
 dget(dentry);
 d_instantiate(dentry, inode);
 return 0;
}
