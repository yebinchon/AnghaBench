
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; int i_uid; } ;
typedef int kuid_t ;
struct TYPE_2__ {int s_user_ns; } ;


 int CAP_CHOWN ;
 int INVALID_UID ;
 scalar_t__ capable_wrt_inode_uidgid (struct inode const*,int ) ;
 int current_fsuid () ;
 scalar_t__ ns_capable (int ,int ) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static bool chown_ok(const struct inode *inode, kuid_t uid)
{
 if (uid_eq(current_fsuid(), inode->i_uid) &&
     uid_eq(uid, inode->i_uid))
  return 1;
 if (capable_wrt_inode_uidgid(inode, CAP_CHOWN))
  return 1;
 if (uid_eq(inode->i_uid, INVALID_UID) &&
     ns_capable(inode->i_sb->s_user_ns, CAP_CHOWN))
  return 1;
 return 0;
}
