
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_2__ {int mnt_flags; } ;
struct mount {TYPE_1__ mnt; } ;


 int EROFS ;
 int MNT_WRITE_HOLD ;
 int READ_ONCE (int ) ;
 int cpu_relax () ;
 int mnt_dec_writers (struct mount*) ;
 int mnt_inc_writers (struct mount*) ;
 scalar_t__ mnt_is_readonly (struct vfsmount*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 struct mount* real_mount (struct vfsmount*) ;
 int smp_mb () ;
 int smp_rmb () ;

int __mnt_want_write(struct vfsmount *m)
{
 struct mount *mnt = real_mount(m);
 int ret = 0;

 preempt_disable();
 mnt_inc_writers(mnt);





 smp_mb();
 while (READ_ONCE(mnt->mnt.mnt_flags) & MNT_WRITE_HOLD)
  cpu_relax();





 smp_rmb();
 if (mnt_is_readonly(m)) {
  mnt_dec_writers(mnt);
  ret = -EROFS;
 }
 preempt_enable();

 return ret;
}
