
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int mnt_flags; TYPE_1__* mnt_sb; } ;
struct TYPE_2__ {int s_user_ns; } ;


 int MNT_NOSUID ;
 scalar_t__ check_mnt (int ) ;
 scalar_t__ current_in_userns (int ) ;
 int real_mount (struct vfsmount*) ;

bool mnt_may_suid(struct vfsmount *mnt)
{







 return !(mnt->mnt_flags & MNT_NOSUID) && check_mnt(real_mount(mnt)) &&
        current_in_userns(mnt->mnt_sb->s_user_ns);
}
