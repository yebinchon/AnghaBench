
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evm_ima_xattr_data {scalar_t__ type; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 int EVM_ALLOW_METADATA_WRITES ;
 scalar_t__ EVM_IMA_XATTR_DIGSIG ;
 scalar_t__ EVM_XATTR_PORTABLE_DIGSIG ;
 int XATTR_NAME_EVM ;
 int evm_initialized ;
 int evm_protect_xattr (struct dentry*,char const*,void const*,size_t) ;
 scalar_t__ strcmp (char const*,int ) ;

int evm_inode_setxattr(struct dentry *dentry, const char *xattr_name,
         const void *xattr_value, size_t xattr_value_len)
{
 const struct evm_ima_xattr_data *xattr_data = xattr_value;




 if (evm_initialized & EVM_ALLOW_METADATA_WRITES)
  return 0;

 if (strcmp(xattr_name, XATTR_NAME_EVM) == 0) {
  if (!xattr_value_len)
   return -EINVAL;
  if (xattr_data->type != EVM_IMA_XATTR_DIGSIG &&
      xattr_data->type != EVM_XATTR_PORTABLE_DIGSIG)
   return -EPERM;
 }
 return evm_protect_xattr(dentry, xattr_name, xattr_value,
     xattr_value_len);
}
