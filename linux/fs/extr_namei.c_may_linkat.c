
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
struct inode {int i_gid; int i_uid; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int EOVERFLOW ;
 int EPERM ;
 int audit_log_link_denied (char*) ;
 int gid_valid (int ) ;
 scalar_t__ inode_owner_or_capable (struct inode*) ;
 scalar_t__ safe_hardlink_source (struct inode*) ;
 int sysctl_protected_hardlinks ;
 int uid_valid (int ) ;

__attribute__((used)) static int may_linkat(struct path *link)
{
 struct inode *inode = link->dentry->d_inode;


 if (!uid_valid(inode->i_uid) || !gid_valid(inode->i_gid))
  return -EOVERFLOW;

 if (!sysctl_protected_hardlinks)
  return 0;




 if (safe_hardlink_source(inode) || inode_owner_or_capable(inode))
  return 0;

 audit_log_link_denied("linkat");
 return -EPERM;
}
