
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int down_read (int *) ;
 int lock_mount_hash () ;
 int namespace_sem ;
 scalar_t__ propagate_mount_busy (int ,int) ;
 int real_mount (struct vfsmount*) ;
 int unlock_mount_hash () ;
 int up_read (int *) ;

int may_umount(struct vfsmount *mnt)
{
 int ret = 1;
 down_read(&namespace_sem);
 lock_mount_hash();
 if (propagate_mount_busy(real_mount(mnt), 2))
  ret = 0;
 unlock_mount_hash();
 up_read(&namespace_sem);
 return ret;
}
