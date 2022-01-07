
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {TYPE_2__* d_sb; } ;
struct cred {int dummy; } ;
struct TYPE_3__ {int dentry; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;
struct TYPE_4__ {int s_root; } ;


 int FILESYSTEM__GETATTR ;
 int LSM_AUDIT_DATA_DENTRY ;
 struct cred* current_cred () ;
 int superblock_has_perm (struct cred const*,TYPE_2__*,int ,struct common_audit_data*) ;

__attribute__((used)) static int selinux_sb_statfs(struct dentry *dentry)
{
 const struct cred *cred = current_cred();
 struct common_audit_data ad;

 ad.type = LSM_AUDIT_DATA_DENTRY;
 ad.u.dentry = dentry->d_sb->s_root;
 return superblock_has_perm(cred, dentry->d_sb, FILESYSTEM__GETATTR, &ad);
}
