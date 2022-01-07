
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_security_struct {int dummy; } ;
struct inode {int dummy; } ;


 struct inode_security_struct* selinux_inode (struct inode*) ;

__attribute__((used)) static struct inode_security_struct *inode_security_novalidate(struct inode *inode)
{
 return selinux_inode(inode);
}
