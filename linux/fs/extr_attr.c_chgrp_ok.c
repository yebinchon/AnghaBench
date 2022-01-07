
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; int i_gid; int i_uid; } ;
typedef int kgid_t ;
struct TYPE_2__ {int s_user_ns; } ;


 int CAP_CHOWN ;
 int INVALID_GID ;
 scalar_t__ capable_wrt_inode_uidgid (struct inode const*,int ) ;
 int current_fsuid () ;
 scalar_t__ gid_eq (int ,int ) ;
 scalar_t__ in_group_p (int ) ;
 scalar_t__ ns_capable (int ,int ) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static bool chgrp_ok(const struct inode *inode, kgid_t gid)
{
 if (uid_eq(current_fsuid(), inode->i_uid) &&
     (in_group_p(gid) || gid_eq(gid, inode->i_gid)))
  return 1;
 if (capable_wrt_inode_uidgid(inode, CAP_CHOWN))
  return 1;
 if (gid_eq(inode->i_gid, INVALID_GID) &&
     ns_capable(inode->i_sb->s_user_ns, CAP_CHOWN))
  return 1;
 return 0;
}
