
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_root; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int dentry; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int FILESYSTEM__MOUNT ;
 int LSM_AUDIT_DATA_DENTRY ;
 struct cred* current_cred () ;
 int superblock_has_perm (struct cred const*,struct super_block*,int ,struct common_audit_data*) ;

__attribute__((used)) static int selinux_sb_kern_mount(struct super_block *sb)
{
 const struct cred *cred = current_cred();
 struct common_audit_data ad;

 ad.type = LSM_AUDIT_DATA_DENTRY;
 ad.u.dentry = sb->s_root;
 return superblock_has_perm(cred, sb, FILESYSTEM__MOUNT, &ad);
}
