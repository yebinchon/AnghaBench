
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {TYPE_2__* mnt; } ;
struct TYPE_4__ {int mnt_flags; TYPE_1__* mnt_sb; } ;
struct TYPE_3__ {int s_iflags; } ;


 int MNT_NODEV ;
 int SB_I_NODEV ;

bool may_open_dev(const struct path *path)
{
 return !(path->mnt->mnt_flags & MNT_NODEV) &&
  !(path->mnt->mnt_sb->s_iflags & SB_I_NODEV);
}
