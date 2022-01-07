
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_security_struct {int dummy; } ;
struct inode {int dummy; } ;


 int __inode_security_revalidate (struct inode*,int *,int) ;
 struct inode_security_struct* selinux_inode (struct inode*) ;

__attribute__((used)) static struct inode_security_struct *inode_security(struct inode *inode)
{
 __inode_security_revalidate(inode, ((void*)0), 1);
 return selinux_inode(inode);
}
