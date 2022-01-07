
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int IS_PRIVATE (int ) ;
 int call_int_hook (int ,int ,struct inode*,struct dentry*) ;
 int d_backing_inode (struct dentry*) ;
 int inode_unlink ;
 scalar_t__ unlikely (int ) ;

int security_inode_unlink(struct inode *dir, struct dentry *dentry)
{
 if (unlikely(IS_PRIVATE(d_backing_inode(dentry))))
  return 0;
 return call_int_hook(inode_unlink, 0, dir, dentry);
}
