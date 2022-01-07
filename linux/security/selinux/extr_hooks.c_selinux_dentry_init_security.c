
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qstr {int dummy; } ;
struct dentry {int d_parent; } ;


 int current_cred () ;
 int d_inode (int ) ;
 int inode_mode_to_security_class (int) ;
 int security_sid_to_context (int *,int ,char**,int *) ;
 int selinux_cred (int ) ;
 int selinux_determine_inode_label (int ,int ,struct qstr const*,int ,int *) ;
 int selinux_state ;

__attribute__((used)) static int selinux_dentry_init_security(struct dentry *dentry, int mode,
     const struct qstr *name, void **ctx,
     u32 *ctxlen)
{
 u32 newsid;
 int rc;

 rc = selinux_determine_inode_label(selinux_cred(current_cred()),
        d_inode(dentry->d_parent), name,
        inode_mode_to_security_class(mode),
        &newsid);
 if (rc)
  return rc;

 return security_sid_to_context(&selinux_state, newsid, (char **)ctx,
           ctxlen);
}
