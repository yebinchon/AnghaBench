
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nameidata {int flags; TYPE_2__* stack; int name; struct inode* inode; struct inode* link_inode; } ;
struct inode {int i_mode; int i_uid; } ;
typedef int kuid_t ;
struct TYPE_6__ {int fsuid; } ;
struct TYPE_4__ {int dentry; } ;
struct TYPE_5__ {TYPE_1__ link; } ;


 int EACCES ;
 int ECHILD ;
 int LOOKUP_RCU ;
 int S_ISVTX ;
 int S_IWOTH ;
 int audit_inode (int ,int ,int ) ;
 int audit_log_link_denied (char*) ;
 TYPE_3__* current_cred () ;
 int sysctl_protected_symlinks ;
 scalar_t__ uid_eq (int ,int ) ;
 scalar_t__ uid_valid (int ) ;

__attribute__((used)) static inline int may_follow_link(struct nameidata *nd)
{
 const struct inode *inode;
 const struct inode *parent;
 kuid_t puid;

 if (!sysctl_protected_symlinks)
  return 0;


 inode = nd->link_inode;
 if (uid_eq(current_cred()->fsuid, inode->i_uid))
  return 0;


 parent = nd->inode;
 if ((parent->i_mode & (S_ISVTX|S_IWOTH)) != (S_ISVTX|S_IWOTH))
  return 0;


 puid = parent->i_uid;
 if (uid_valid(puid) && uid_eq(puid, inode->i_uid))
  return 0;

 if (nd->flags & LOOKUP_RCU)
  return -ECHILD;

 audit_inode(nd->name, nd->stack[0].link.dentry, 0);
 audit_log_link_denied("follow_link");
 return -EACCES;
}
