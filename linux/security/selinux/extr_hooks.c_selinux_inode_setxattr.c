
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct superblock_security_struct {int flags; int sid; } ;
struct inode_security_struct {int sclass; int sid; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct common_audit_data {TYPE_2__ u; int type; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_3__ {struct superblock_security_struct* s_security; } ;


 int AUDIT_SELINUX_ERR ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;
 int FILESYSTEM__ASSOCIATE ;
 int FILE__RELABELFROM ;
 int FILE__RELABELTO ;
 int FILE__SETATTR ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int LSM_AUDIT_DATA_DENTRY ;
 int SBLABEL_MNT ;
 int SECCLASS_FILESYSTEM ;
 int XATTR_NAME_SELINUX ;
 int audit_context () ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*) ;
 int audit_log_n_untrustedstring (struct audit_buffer*,void const*,size_t) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 struct inode_security_struct* backing_inode_security (struct dentry*) ;
 int cap_inode_setxattr (struct dentry*,char const*,void const*,size_t,int) ;
 int current_cred () ;
 int current_sid () ;
 struct inode* d_backing_inode (struct dentry*) ;
 int dentry_has_perm (int ,struct dentry*,int ) ;
 int has_cap_mac_admin (int) ;
 int inode_owner_or_capable (struct inode*) ;
 int security_context_to_sid (int *,void const*,size_t,int *,int ) ;
 int security_context_to_sid_force (int *,void const*,size_t,int *) ;
 int security_validate_transition (int *,int ,int ,int ,int ) ;
 int selinux_state ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int selinux_inode_setxattr(struct dentry *dentry, const char *name,
      const void *value, size_t size, int flags)
{
 struct inode *inode = d_backing_inode(dentry);
 struct inode_security_struct *isec;
 struct superblock_security_struct *sbsec;
 struct common_audit_data ad;
 u32 newsid, sid = current_sid();
 int rc = 0;

 if (strcmp(name, XATTR_NAME_SELINUX)) {
  rc = cap_inode_setxattr(dentry, name, value, size, flags);
  if (rc)
   return rc;



  return dentry_has_perm(current_cred(), dentry, FILE__SETATTR);
 }

 sbsec = inode->i_sb->s_security;
 if (!(sbsec->flags & SBLABEL_MNT))
  return -EOPNOTSUPP;

 if (!inode_owner_or_capable(inode))
  return -EPERM;

 ad.type = LSM_AUDIT_DATA_DENTRY;
 ad.u.dentry = dentry;

 isec = backing_inode_security(dentry);
 rc = avc_has_perm(&selinux_state,
     sid, isec->sid, isec->sclass,
     FILE__RELABELFROM, &ad);
 if (rc)
  return rc;

 rc = security_context_to_sid(&selinux_state, value, size, &newsid,
         GFP_KERNEL);
 if (rc == -EINVAL) {
  if (!has_cap_mac_admin(1)) {
   struct audit_buffer *ab;
   size_t audit_size;



   if (value) {
    const char *str = value;

    if (str[size - 1] == '\0')
     audit_size = size - 1;
    else
     audit_size = size;
   } else {
    audit_size = 0;
   }
   ab = audit_log_start(audit_context(),
          GFP_ATOMIC, AUDIT_SELINUX_ERR);
   audit_log_format(ab, "op=setxattr invalid_context=");
   audit_log_n_untrustedstring(ab, value, audit_size);
   audit_log_end(ab);

   return rc;
  }
  rc = security_context_to_sid_force(&selinux_state, value,
         size, &newsid);
 }
 if (rc)
  return rc;

 rc = avc_has_perm(&selinux_state,
     sid, newsid, isec->sclass,
     FILE__RELABELTO, &ad);
 if (rc)
  return rc;

 rc = security_validate_transition(&selinux_state, isec->sid, newsid,
       sid, isec->sclass);
 if (rc)
  return rc;

 return avc_has_perm(&selinux_state,
       newsid,
       sbsec->sid,
       SECCLASS_FILESYSTEM,
       FILESYSTEM__ASSOCIATE,
       &ad);
}
