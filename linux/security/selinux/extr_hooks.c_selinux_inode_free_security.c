
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int inode_free_security (struct inode*) ;

__attribute__((used)) static void selinux_inode_free_security(struct inode *inode)
{
 inode_free_security(inode);
}
