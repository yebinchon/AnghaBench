
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {TYPE_1__* mnt_sb; } ;
struct TYPE_2__ {scalar_t__ s_readonly_remount; } ;


 int __mnt_is_readonly (struct vfsmount*) ;
 int smp_rmb () ;

__attribute__((used)) static int mnt_is_readonly(struct vfsmount *mnt)
{
 if (mnt->mnt_sb->s_readonly_remount)
  return 1;

 smp_rmb();
 return __mnt_is_readonly(mnt);
}
