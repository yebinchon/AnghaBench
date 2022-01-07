
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {TYPE_1__* mnt_sb; int mnt_flags; } ;
struct TYPE_2__ {int s_flags; } ;


 int ST_VALID ;
 int flags_by_mnt (int ) ;
 int flags_by_sb (int ) ;

__attribute__((used)) static int calculate_f_flags(struct vfsmount *mnt)
{
 return ST_VALID | flags_by_mnt(mnt->mnt_flags) |
  flags_by_sb(mnt->mnt_sb->s_flags);
}
