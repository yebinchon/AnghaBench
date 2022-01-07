
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode_security_struct {int sclass; int sid; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int FILE__READ ;
 scalar_t__ IS_ERR (struct inode_security_struct*) ;
 int LSM_AUDIT_DATA_DENTRY ;
 int PTR_ERR (struct inode_security_struct*) ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 int cred_sid (struct cred const*) ;
 struct cred* current_cred () ;
 struct inode_security_struct* inode_security_rcu (struct inode*,int) ;
 int selinux_state ;
 int validate_creds (struct cred const*) ;

__attribute__((used)) static int selinux_inode_follow_link(struct dentry *dentry, struct inode *inode,
         bool rcu)
{
 const struct cred *cred = current_cred();
 struct common_audit_data ad;
 struct inode_security_struct *isec;
 u32 sid;

 validate_creds(cred);

 ad.type = LSM_AUDIT_DATA_DENTRY;
 ad.u.dentry = dentry;
 sid = cred_sid(cred);
 isec = inode_security_rcu(inode, rcu);
 if (IS_ERR(isec))
  return PTR_ERR(isec);

 return avc_has_perm(&selinux_state,
       sid, isec->sid, isec->sclass, FILE__READ, &ad);
}
