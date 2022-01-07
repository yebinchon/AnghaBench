
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct task_security_struct {int sid; } ;
struct superblock_security_struct {int sid; } ;
struct inode_security_struct {int sid; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {int d_name; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct common_audit_data {TYPE_2__ u; int type; } ;
struct TYPE_3__ {struct superblock_security_struct* s_security; } ;


 int DIR__ADD_NAME ;
 int DIR__SEARCH ;
 int FILESYSTEM__ASSOCIATE ;
 int FILE__CREATE ;
 int LSM_AUDIT_DATA_DENTRY ;
 int SECCLASS_DIR ;
 int SECCLASS_FILESYSTEM ;
 int avc_has_perm (int *,int ,int ,int ,int,struct common_audit_data*) ;
 int current_cred () ;
 struct inode_security_struct* inode_security (struct inode*) ;
 struct task_security_struct* selinux_cred (int ) ;
 int selinux_determine_inode_label (struct task_security_struct*,struct inode*,int *,int ,int *) ;
 int selinux_state ;

__attribute__((used)) static int may_create(struct inode *dir,
        struct dentry *dentry,
        u16 tclass)
{
 const struct task_security_struct *tsec = selinux_cred(current_cred());
 struct inode_security_struct *dsec;
 struct superblock_security_struct *sbsec;
 u32 sid, newsid;
 struct common_audit_data ad;
 int rc;

 dsec = inode_security(dir);
 sbsec = dir->i_sb->s_security;

 sid = tsec->sid;

 ad.type = LSM_AUDIT_DATA_DENTRY;
 ad.u.dentry = dentry;

 rc = avc_has_perm(&selinux_state,
     sid, dsec->sid, SECCLASS_DIR,
     DIR__ADD_NAME | DIR__SEARCH,
     &ad);
 if (rc)
  return rc;

 rc = selinux_determine_inode_label(selinux_cred(current_cred()), dir,
        &dentry->d_name, tclass, &newsid);
 if (rc)
  return rc;

 rc = avc_has_perm(&selinux_state,
     sid, newsid, tclass, FILE__CREATE, &ad);
 if (rc)
  return rc;

 return avc_has_perm(&selinux_state,
       newsid, sbsec->sid,
       SECCLASS_FILESYSTEM,
       FILESYSTEM__ASSOCIATE, &ad);
}
