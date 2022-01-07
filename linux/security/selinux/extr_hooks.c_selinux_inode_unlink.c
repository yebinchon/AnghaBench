
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int MAY_UNLINK ;
 int may_link (struct inode*,struct dentry*,int ) ;

__attribute__((used)) static int selinux_inode_unlink(struct inode *dir, struct dentry *dentry)
{
 return may_link(dir, dentry, MAY_UNLINK);
}
