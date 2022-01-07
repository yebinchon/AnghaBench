
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {struct user_namespace* s_user_ns; } ;


 int CAP_SETFCAP ;
 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int XATTR_NAME_CAPS ;
 int XATTR_SECURITY_PREFIX ;
 int XATTR_SECURITY_PREFIX_LEN ;
 int capable_wrt_inode_uidgid (struct inode*,int ) ;
 struct inode* d_backing_inode (struct dentry*) ;
 int ns_capable (struct user_namespace*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

int cap_inode_removexattr(struct dentry *dentry, const char *name)
{
 struct user_namespace *user_ns = dentry->d_sb->s_user_ns;


 if (strncmp(name, XATTR_SECURITY_PREFIX,
   XATTR_SECURITY_PREFIX_LEN) != 0)
  return 0;

 if (strcmp(name, XATTR_NAME_CAPS) == 0) {

  struct inode *inode = d_backing_inode(dentry);
  if (!inode)
   return -EINVAL;
  if (!capable_wrt_inode_uidgid(inode, CAP_SETFCAP))
   return -EPERM;
  return 0;
 }

 if (!ns_capable(user_ns, CAP_SYS_ADMIN))
  return -EPERM;
 return 0;
}
