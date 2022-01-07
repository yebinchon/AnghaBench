
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evm_ima_xattr_data {scalar_t__ type; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 scalar_t__ EVM_IMA_XATTR_DIGSIG ;
 scalar_t__ IMA_XATTR_LAST ;
 int d_backing_inode (struct dentry*) ;
 int ima_protect_xattr (struct dentry*,char const*,void const*,size_t) ;
 int ima_reset_appraise_flags (int ,int) ;

int ima_inode_setxattr(struct dentry *dentry, const char *xattr_name,
         const void *xattr_value, size_t xattr_value_len)
{
 const struct evm_ima_xattr_data *xvalue = xattr_value;
 int result;

 result = ima_protect_xattr(dentry, xattr_name, xattr_value,
       xattr_value_len);
 if (result == 1) {
  if (!xattr_value_len || (xvalue->type >= IMA_XATTR_LAST))
   return -EINVAL;
  ima_reset_appraise_flags(d_backing_inode(dentry),
   xvalue->type == EVM_IMA_XATTR_DIGSIG);
  result = 0;
 }
 return result;
}
