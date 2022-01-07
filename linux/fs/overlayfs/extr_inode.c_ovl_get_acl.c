
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_sb; } ;
struct cred {int dummy; } ;


 int CONFIG_FS_POSIX_ACL ;
 int IS_ENABLED (int ) ;
 int IS_POSIXACL (struct inode*) ;
 struct posix_acl* get_acl (struct inode*,int) ;
 struct inode* ovl_inode_real (struct inode*) ;
 struct cred* ovl_override_creds (int ) ;
 int revert_creds (struct cred const*) ;

struct posix_acl *ovl_get_acl(struct inode *inode, int type)
{
 struct inode *realinode = ovl_inode_real(inode);
 const struct cred *old_cred;
 struct posix_acl *acl;

 if (!IS_ENABLED(CONFIG_FS_POSIX_ACL) || !IS_POSIXACL(realinode))
  return ((void*)0);

 old_cred = ovl_override_creds(inode->i_sb);
 acl = get_acl(realinode, type);
 revert_creds(old_cred);

 return acl;
}
