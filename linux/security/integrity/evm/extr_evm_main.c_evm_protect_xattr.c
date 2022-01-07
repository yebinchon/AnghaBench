
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct integrity_iint_cache {int flags; } ;
struct TYPE_4__ {int name; } ;
struct dentry {TYPE_2__ d_name; int d_inode; TYPE_1__* d_sb; } ;
typedef enum integrity_status { ____Placeholder_integrity_status } integrity_status ;
struct TYPE_3__ {scalar_t__ s_magic; } ;


 int AUDIT_INTEGRITY_METADATA ;
 int CAP_SYS_ADMIN ;
 int EPERM ;
 int IMA_NEW_FILE ;
 int INTEGRITY_NOXATTRS ;
 int INTEGRITY_PASS ;
 scalar_t__ SYSFS_MAGIC ;
 scalar_t__ TMPFS_MAGIC ;
 int XATTR_NAME_EVM ;
 int capable (int ) ;
 int d_backing_inode (struct dentry*) ;
 int evm_protected_xattr (char const*) ;
 int evm_verify_current_integrity (struct dentry*) ;
 int integrity_audit_msg (int ,int ,int ,char*,int ,int,int ) ;
 struct integrity_iint_cache* integrity_iint_find (int ) ;
 int * integrity_status_msg ;
 int posix_xattr_acl (char const*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int evm_protect_xattr(struct dentry *dentry, const char *xattr_name,
        const void *xattr_value, size_t xattr_value_len)
{
 enum integrity_status evm_status;

 if (strcmp(xattr_name, XATTR_NAME_EVM) == 0) {
  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;
 } else if (!evm_protected_xattr(xattr_name)) {
  if (!posix_xattr_acl(xattr_name))
   return 0;
  evm_status = evm_verify_current_integrity(dentry);
  if ((evm_status == INTEGRITY_PASS) ||
      (evm_status == INTEGRITY_NOXATTRS))
   return 0;
  goto out;
 }

 evm_status = evm_verify_current_integrity(dentry);
 if (evm_status == INTEGRITY_NOXATTRS) {
  struct integrity_iint_cache *iint;

  iint = integrity_iint_find(d_backing_inode(dentry));
  if (iint && (iint->flags & IMA_NEW_FILE))
   return 0;


  if (dentry->d_sb->s_magic == TMPFS_MAGIC
      || dentry->d_sb->s_magic == SYSFS_MAGIC)
   return 0;

  integrity_audit_msg(AUDIT_INTEGRITY_METADATA,
        dentry->d_inode, dentry->d_name.name,
        "update_metadata",
        integrity_status_msg[evm_status],
        -EPERM, 0);
 }
out:
 if (evm_status != INTEGRITY_PASS)
  integrity_audit_msg(AUDIT_INTEGRITY_METADATA, d_backing_inode(dentry),
        dentry->d_name.name, "appraise_metadata",
        integrity_status_msg[evm_status],
        -EPERM, 0);
 return evm_status == INTEGRITY_PASS ? 0 : -EPERM;
}
