
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int IS_PRIVATE (int ) ;
 int call_int_hook (int ,int ,struct dentry*,char const*) ;
 int d_backing_inode (struct dentry*) ;
 int inode_getxattr ;
 scalar_t__ unlikely (int ) ;

int security_inode_getxattr(struct dentry *dentry, const char *name)
{
 if (unlikely(IS_PRIVATE(d_backing_inode(dentry))))
  return 0;
 return call_int_hook(inode_getxattr, 0, dentry, name);
}
