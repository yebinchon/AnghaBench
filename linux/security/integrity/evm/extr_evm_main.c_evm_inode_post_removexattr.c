
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; } ;


 int evm_key_loaded () ;
 int evm_protected_xattr (char const*) ;
 int evm_reset_status (int ) ;
 int evm_update_evmxattr (struct dentry*,char const*,int *,int ) ;

void evm_inode_post_removexattr(struct dentry *dentry, const char *xattr_name)
{
 if (!evm_key_loaded() || !evm_protected_xattr(xattr_name))
  return;

 evm_reset_status(dentry->d_inode);

 evm_update_evmxattr(dentry, xattr_name, ((void*)0), 0);
}
