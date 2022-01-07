
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_PRIVATE (struct inode*) ;
 int call_void_hook (int ,struct dentry*,struct inode*) ;
 int d_instantiate ;
 scalar_t__ unlikely (int) ;

void security_d_instantiate(struct dentry *dentry, struct inode *inode)
{
 if (unlikely(inode && IS_PRIVATE(inode)))
  return;
 call_void_hook(d_instantiate, dentry, inode);
}
