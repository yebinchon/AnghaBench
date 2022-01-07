
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_security_struct {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int __inode_security_revalidate (struct inode*,struct dentry*,int) ;
 struct inode* d_backing_inode (struct dentry*) ;
 struct inode_security_struct* selinux_inode (struct inode*) ;

__attribute__((used)) static struct inode_security_struct *backing_inode_security(struct dentry *dentry)
{
 struct inode *inode = d_backing_inode(dentry);

 __inode_security_revalidate(inode, dentry, 1);
 return selinux_inode(inode);
}
