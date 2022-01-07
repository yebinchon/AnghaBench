
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int mntput (struct vfsmount*) ;
 int pin_fs_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void simple_release_fs(struct vfsmount **mount, int *count)
{
 struct vfsmount *mnt;
 spin_lock(&pin_fs_lock);
 mnt = *mount;
 if (!--*count)
  *mount = ((void*)0);
 spin_unlock(&pin_fs_lock);
 mntput(mnt);
}
