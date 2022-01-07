
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int EVM_ALLOW_METADATA_WRITES ;
 int evm_initialized ;
 int evm_protect_xattr (struct dentry*,char const*,int *,int ) ;

int evm_inode_removexattr(struct dentry *dentry, const char *xattr_name)
{



 if (evm_initialized & EVM_ALLOW_METADATA_WRITES)
  return 0;

 return evm_protect_xattr(dentry, xattr_name, ((void*)0), 0);
}
