
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; } ;
struct dentry {int dummy; } ;


 int add_nondir (struct dentry*,struct inode*) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int ihold (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;

__attribute__((used)) static int sysv_link(struct dentry * old_dentry, struct inode * dir,
 struct dentry * dentry)
{
 struct inode *inode = d_inode(old_dentry);

 inode->i_ctime = current_time(inode);
 inode_inc_link_count(inode);
 ihold(inode);

 return add_nondir(dentry, inode);
}
