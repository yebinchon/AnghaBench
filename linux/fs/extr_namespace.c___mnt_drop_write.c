
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int mnt_dec_writers (int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int real_mount (struct vfsmount*) ;

void __mnt_drop_write(struct vfsmount *mnt)
{
 preempt_disable();
 mnt_dec_writers(real_mount(mnt));
 preempt_enable();
}
