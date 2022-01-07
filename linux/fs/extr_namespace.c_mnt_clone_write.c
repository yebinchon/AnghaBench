
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int EROFS ;
 scalar_t__ __mnt_is_readonly (struct vfsmount*) ;
 int mnt_inc_writers (int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int real_mount (struct vfsmount*) ;

int mnt_clone_write(struct vfsmount *mnt)
{

 if (__mnt_is_readonly(mnt))
  return -EROFS;
 preempt_disable();
 mnt_inc_writers(real_mount(mnt));
 preempt_enable();
 return 0;
}
