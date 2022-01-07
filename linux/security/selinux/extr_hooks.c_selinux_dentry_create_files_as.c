
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_security_struct {int create_sid; } ;
struct qstr {int dummy; } ;
struct dentry {int d_parent; } ;
typedef struct cred const cred ;


 int d_inode (int ) ;
 int inode_mode_to_security_class (int) ;
 struct task_security_struct* selinux_cred (struct cred const*) ;
 int selinux_determine_inode_label (struct task_security_struct*,int ,struct qstr*,int ,int *) ;

__attribute__((used)) static int selinux_dentry_create_files_as(struct dentry *dentry, int mode,
       struct qstr *name,
       const struct cred *old,
       struct cred *new)
{
 u32 newsid;
 int rc;
 struct task_security_struct *tsec;

 rc = selinux_determine_inode_label(selinux_cred(old),
        d_inode(dentry->d_parent), name,
        inode_mode_to_security_class(mode),
        &newsid);
 if (rc)
  return rc;

 tsec = selinux_cred(new);
 tsec->create_sid = newsid;
 return 0;
}
