
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct superblock_security_struct {int sid; } ;
struct super_block {struct superblock_security_struct* s_security; } ;
struct cred {int dummy; } ;
struct common_audit_data {int dummy; } ;


 int SECCLASS_FILESYSTEM ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 int cred_sid (struct cred const*) ;
 int selinux_state ;

__attribute__((used)) static int superblock_has_perm(const struct cred *cred,
          struct super_block *sb,
          u32 perms,
          struct common_audit_data *ad)
{
 struct superblock_security_struct *sbsec;
 u32 sid = cred_sid(cred);

 sbsec = sb->s_security;
 return avc_has_perm(&selinux_state,
       sid, sbsec->sid, SECCLASS_FILESYSTEM, perms, ad);
}
