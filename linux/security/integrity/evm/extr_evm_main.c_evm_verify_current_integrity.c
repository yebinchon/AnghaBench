
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct dentry {int dummy; } ;
typedef enum integrity_status { ____Placeholder_integrity_status } integrity_status ;


 int S_ISREG (int ) ;
 struct inode* d_backing_inode (struct dentry*) ;
 scalar_t__ evm_fixmode ;
 int evm_key_loaded () ;
 int evm_verify_hmac (struct dentry*,int *,int *,int ,int *) ;

__attribute__((used)) static enum integrity_status evm_verify_current_integrity(struct dentry *dentry)
{
 struct inode *inode = d_backing_inode(dentry);

 if (!evm_key_loaded() || !S_ISREG(inode->i_mode) || evm_fixmode)
  return 0;
 return evm_verify_hmac(dentry, ((void*)0), ((void*)0), 0, ((void*)0));
}
