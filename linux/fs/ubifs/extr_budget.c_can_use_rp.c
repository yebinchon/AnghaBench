
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int rp_gid; int rp_uid; } ;


 int CAP_SYS_RESOURCE ;
 int GLOBAL_ROOT_GID ;
 scalar_t__ capable (int ) ;
 int current_fsuid () ;
 int gid_eq (int ,int ) ;
 scalar_t__ in_group_p (int ) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static int can_use_rp(struct ubifs_info *c)
{
 if (uid_eq(current_fsuid(), c->rp_uid) || capable(CAP_SYS_RESOURCE) ||
     (!gid_eq(c->rp_gid, GLOBAL_ROOT_GID) && in_group_p(c->rp_gid)))
  return 1;
 return 0;
}
