
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; } ;


 int evm_key_loaded () ;
 int evm_protected_xattr (char const*) ;
 int evm_reset_status (int ) ;
 int evm_update_evmxattr (struct dentry*,char const*,void const*,size_t) ;
 int posix_xattr_acl (char const*) ;

void evm_inode_post_setxattr(struct dentry *dentry, const char *xattr_name,
        const void *xattr_value, size_t xattr_value_len)
{
 if (!evm_key_loaded() || (!evm_protected_xattr(xattr_name)
      && !posix_xattr_acl(xattr_name)))
  return;

 evm_reset_status(dentry->d_inode);

 evm_update_evmxattr(dentry, xattr_name, xattr_value, xattr_value_len);
}
