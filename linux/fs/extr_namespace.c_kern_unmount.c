
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_2__ {int * mnt_ns; } ;


 int IS_ERR_OR_NULL (struct vfsmount*) ;
 int mntput (struct vfsmount*) ;
 TYPE_1__* real_mount (struct vfsmount*) ;
 int synchronize_rcu () ;

void kern_unmount(struct vfsmount *mnt)
{

 if (!IS_ERR_OR_NULL(mnt)) {
  real_mount(mnt)->mnt_ns = ((void*)0);
  synchronize_rcu();
  mntput(mnt);
 }
}
