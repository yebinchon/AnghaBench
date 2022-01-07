
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;
struct cred {int dummy; } ;


 struct cred* ovl_override_creds (int ) ;
 int ovl_set_redirect (struct dentry*,int) ;
 int revert_creds (struct cred const*) ;

__attribute__((used)) static int ovl_set_link_redirect(struct dentry *dentry)
{
 const struct cred *old_cred;
 int err;

 old_cred = ovl_override_creds(dentry->d_sb);
 err = ovl_set_redirect(dentry, 0);
 revert_creds(old_cred);

 return err;
}
