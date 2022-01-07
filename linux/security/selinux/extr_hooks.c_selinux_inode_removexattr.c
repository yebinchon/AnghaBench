
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int EACCES ;
 int FILE__SETATTR ;
 int XATTR_NAME_SELINUX ;
 int cap_inode_removexattr (struct dentry*,char const*) ;
 int current_cred () ;
 int dentry_has_perm (int ,struct dentry*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int selinux_inode_removexattr(struct dentry *dentry, const char *name)
{
 if (strcmp(name, XATTR_NAME_SELINUX)) {
  int rc = cap_inode_removexattr(dentry, name);
  if (rc)
   return rc;



  return dentry_has_perm(current_cred(), dentry, FILE__SETATTR);
 }



 return -EACCES;
}
