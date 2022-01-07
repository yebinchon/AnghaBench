
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int check_mnt (int ) ;
 int real_mount (struct vfsmount*) ;

bool our_mnt(struct vfsmount *mnt)
{
 return check_mnt(real_mount(mnt));
}
