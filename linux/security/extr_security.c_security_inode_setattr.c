
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {int dummy; } ;
struct dentry {int dummy; } ;


 int IS_PRIVATE (int ) ;
 int call_int_hook (int ,int ,struct dentry*,struct iattr*) ;
 int d_backing_inode (struct dentry*) ;
 int evm_inode_setattr (struct dentry*,struct iattr*) ;
 int inode_setattr ;
 scalar_t__ unlikely (int ) ;

int security_inode_setattr(struct dentry *dentry, struct iattr *attr)
{
 int ret;

 if (unlikely(IS_PRIVATE(d_backing_inode(dentry))))
  return 0;
 ret = call_int_hook(inode_setattr, 0, dentry, attr);
 if (ret)
  return ret;
 return evm_inode_setattr(dentry, attr);
}
