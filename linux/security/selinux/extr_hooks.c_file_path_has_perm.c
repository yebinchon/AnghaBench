
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct file {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {struct file* file; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int LSM_AUDIT_DATA_FILE ;
 int file_inode (struct file*) ;
 int inode_has_perm (struct cred const*,int ,int ,struct common_audit_data*) ;

__attribute__((used)) static inline int file_path_has_perm(const struct cred *cred,
         struct file *file,
         u32 av)
{
 struct common_audit_data ad;

 ad.type = LSM_AUDIT_DATA_FILE;
 ad.u.file = file;
 return inode_has_perm(cred, file_inode(file), av, &ad);
}
