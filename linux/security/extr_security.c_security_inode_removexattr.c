
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int IS_PRIVATE (int ) ;
 int call_int_hook (int ,int,struct dentry*,char const*) ;
 int cap_inode_removexattr (struct dentry*,char const*) ;
 int d_backing_inode (struct dentry*) ;
 int evm_inode_removexattr (struct dentry*,char const*) ;
 int ima_inode_removexattr (struct dentry*,char const*) ;
 int inode_removexattr ;
 scalar_t__ unlikely (int ) ;

int security_inode_removexattr(struct dentry *dentry, const char *name)
{
 int ret;

 if (unlikely(IS_PRIVATE(d_backing_inode(dentry))))
  return 0;




 ret = call_int_hook(inode_removexattr, 1, dentry, name);
 if (ret == 1)
  ret = cap_inode_removexattr(dentry, name);
 if (ret)
  return ret;
 ret = ima_inode_removexattr(dentry, name);
 if (ret)
  return ret;
 return evm_inode_removexattr(dentry, name);
}
