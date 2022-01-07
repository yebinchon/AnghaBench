
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path {int dentry; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {struct path path; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int LSM_AUDIT_DATA_PATH ;
 int __inode_security_revalidate (struct inode*,int ,int) ;
 struct inode* d_backing_inode (int ) ;
 int inode_has_perm (struct cred const*,struct inode*,int ,struct common_audit_data*) ;

__attribute__((used)) static inline int path_has_perm(const struct cred *cred,
    const struct path *path,
    u32 av)
{
 struct inode *inode = d_backing_inode(path->dentry);
 struct common_audit_data ad;

 ad.type = LSM_AUDIT_DATA_PATH;
 ad.u.path = *path;
 __inode_security_revalidate(inode, path->dentry, 1);
 return inode_has_perm(cred, inode, av, &ad);
}
