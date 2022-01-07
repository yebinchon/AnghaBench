
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int mnt_add_count (int ,int) ;
 int real_mount (struct vfsmount*) ;

struct vfsmount *mntget(struct vfsmount *mnt)
{
 if (mnt)
  mnt_add_count(real_mount(mnt), 1);
 return mnt;
}
