
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_UID ;
 int evm_key_loaded () ;
 int evm_update_evmxattr (struct dentry*,int *,int *,int ) ;

void evm_inode_post_setattr(struct dentry *dentry, int ia_valid)
{
 if (!evm_key_loaded())
  return;

 if (ia_valid & (ATTR_MODE | ATTR_UID | ATTR_GID))
  evm_update_evmxattr(dentry, ((void*)0), ((void*)0), 0);
}
