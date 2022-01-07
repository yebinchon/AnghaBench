
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xattr {int value_len; int name; struct evm_xattr* value; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct evm_xattr {int digest; TYPE_1__ data; } ;


 int ENOMEM ;
 int EVM_XATTR_HMAC ;
 int GFP_NOFS ;
 int XATTR_EVM_SUFFIX ;
 int evm_init_hmac (struct inode*,struct xattr const*,int ) ;
 int evm_key_loaded () ;
 int evm_protected_xattr (int ) ;
 int kfree (struct evm_xattr*) ;
 struct evm_xattr* kzalloc (int,int ) ;

int evm_inode_init_security(struct inode *inode,
     const struct xattr *lsm_xattr,
     struct xattr *evm_xattr)
{
 struct evm_xattr *xattr_data;
 int rc;

 if (!evm_key_loaded() || !evm_protected_xattr(lsm_xattr->name))
  return 0;

 xattr_data = kzalloc(sizeof(*xattr_data), GFP_NOFS);
 if (!xattr_data)
  return -ENOMEM;

 xattr_data->data.type = EVM_XATTR_HMAC;
 rc = evm_init_hmac(inode, lsm_xattr, xattr_data->digest);
 if (rc < 0)
  goto out;

 evm_xattr->value = xattr_data;
 evm_xattr->value_len = sizeof(*xattr_data);
 evm_xattr->name = XATTR_EVM_SUFFIX;
 return 0;
out:
 kfree(xattr_data);
 return rc;
}
