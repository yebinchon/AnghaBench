
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int LSM_AUDIT_DATA_DENTRY ;
 int __inode_security_revalidate (struct inode*,struct dentry*,int) ;
 struct inode* d_backing_inode (struct dentry*) ;
 int inode_has_perm (struct cred const*,struct inode*,int ,struct common_audit_data*) ;

__attribute__((used)) static inline int dentry_has_perm(const struct cred *cred,
      struct dentry *dentry,
      u32 av)
{
 struct inode *inode = d_backing_inode(dentry);
 struct common_audit_data ad;

 ad.type = LSM_AUDIT_DATA_DENTRY;
 ad.u.dentry = dentry;
 __inode_security_revalidate(inode, dentry, 1);
 return inode_has_perm(cred, inode, av, &ad);
}
