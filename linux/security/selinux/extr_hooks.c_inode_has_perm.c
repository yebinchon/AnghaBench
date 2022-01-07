
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode_security_struct {int sclass; int sid; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
struct common_audit_data {int dummy; } ;


 int IS_PRIVATE (struct inode*) ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 int cred_sid (struct cred const*) ;
 struct inode_security_struct* selinux_inode (struct inode*) ;
 int selinux_state ;
 scalar_t__ unlikely (int ) ;
 int validate_creds (struct cred const*) ;

__attribute__((used)) static int inode_has_perm(const struct cred *cred,
     struct inode *inode,
     u32 perms,
     struct common_audit_data *adp)
{
 struct inode_security_struct *isec;
 u32 sid;

 validate_creds(cred);

 if (unlikely(IS_PRIVATE(inode)))
  return 0;

 sid = cred_sid(cred);
 isec = selinux_inode(inode);

 return avc_has_perm(&selinux_state,
       sid, isec->sid, isec->sclass, perms, adp);
}
