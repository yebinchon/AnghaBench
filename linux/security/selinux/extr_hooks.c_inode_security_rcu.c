
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_security_struct {int dummy; } ;
struct inode {int dummy; } ;


 struct inode_security_struct* ERR_PTR (int) ;
 int __inode_security_revalidate (struct inode*,int *,int) ;
 struct inode_security_struct* selinux_inode (struct inode*) ;

__attribute__((used)) static struct inode_security_struct *inode_security_rcu(struct inode *inode, bool rcu)
{
 int error;

 error = __inode_security_revalidate(inode, ((void*)0), !rcu);
 if (error)
  return ERR_PTR(error);
 return selinux_inode(inode);
}
