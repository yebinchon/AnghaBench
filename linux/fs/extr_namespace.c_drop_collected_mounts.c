
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int lock_mount_hash () ;
 int namespace_lock () ;
 int namespace_unlock () ;
 int real_mount (struct vfsmount*) ;
 int umount_tree (int ,int ) ;
 int unlock_mount_hash () ;

void drop_collected_mounts(struct vfsmount *mnt)
{
 namespace_lock();
 lock_mount_hash();
 umount_tree(real_mount(mnt), 0);
 unlock_mount_hash();
 namespace_unlock();
}
