
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_sb; } ;
struct delayed_call {int dummy; } ;
struct cred {int dummy; } ;


 int ECHILD ;
 char const* ERR_PTR (int ) ;
 int ovl_dentry_real (struct dentry*) ;
 struct cred* ovl_override_creds (int ) ;
 int revert_creds (struct cred const*) ;
 char* vfs_get_link (int ,struct delayed_call*) ;

__attribute__((used)) static const char *ovl_get_link(struct dentry *dentry,
    struct inode *inode,
    struct delayed_call *done)
{
 const struct cred *old_cred;
 const char *p;

 if (!dentry)
  return ERR_PTR(-ECHILD);

 old_cred = ovl_override_creds(dentry->d_sb);
 p = vfs_get_link(ovl_dentry_real(dentry), done);
 revert_creds(old_cred);
 return p;
}
