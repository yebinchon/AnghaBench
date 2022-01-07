
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int mnt_expire; } ;


 int list_add_tail (int *,struct list_head*) ;
 int namespace_lock () ;
 int namespace_unlock () ;
 TYPE_1__* real_mount (struct vfsmount*) ;

void mnt_set_expiry(struct vfsmount *mnt, struct list_head *expiry_list)
{
 namespace_lock();

 list_add_tail(&real_mount(mnt)->mnt_expire, expiry_list);

 namespace_unlock();
}
