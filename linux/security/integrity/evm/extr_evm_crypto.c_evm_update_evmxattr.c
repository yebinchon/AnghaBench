
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_opflags; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_5__ {int * data; TYPE_1__ sha1; } ;
struct TYPE_6__ {TYPE_2__ xattr; int algo; } ;
struct evm_digest {TYPE_3__ hdr; } ;
struct dentry {int dummy; } ;


 int ENODATA ;
 int EPERM ;
 int EVM_XATTR_HMAC ;
 int HASH_ALGO_SHA1 ;
 int IOP_XATTR ;
 scalar_t__ SHA1_DIGEST_SIZE ;
 int XATTR_NAME_EVM ;
 int __vfs_removexattr (struct dentry*,int ) ;
 int __vfs_setxattr_noperm (struct dentry*,int ,int *,scalar_t__,int ) ;
 struct inode* d_backing_inode (struct dentry*) ;
 int evm_calc_hmac (struct dentry*,char const*,char const*,size_t,struct evm_digest*) ;
 int evm_is_immutable (struct dentry*,struct inode*) ;

int evm_update_evmxattr(struct dentry *dentry, const char *xattr_name,
   const char *xattr_value, size_t xattr_value_len)
{
 struct inode *inode = d_backing_inode(dentry);
 struct evm_digest data;
 int rc = 0;





 rc = evm_is_immutable(dentry, inode);
 if (rc < 0)
  return rc;
 if (rc)
  return -EPERM;

 data.hdr.algo = HASH_ALGO_SHA1;
 rc = evm_calc_hmac(dentry, xattr_name, xattr_value,
      xattr_value_len, &data);
 if (rc == 0) {
  data.hdr.xattr.sha1.type = EVM_XATTR_HMAC;
  rc = __vfs_setxattr_noperm(dentry, XATTR_NAME_EVM,
        &data.hdr.xattr.data[1],
        SHA1_DIGEST_SIZE + 1, 0);
 } else if (rc == -ENODATA && (inode->i_opflags & IOP_XATTR)) {
  rc = __vfs_removexattr(dentry, XATTR_NAME_EVM);
 }
 return rc;
}
