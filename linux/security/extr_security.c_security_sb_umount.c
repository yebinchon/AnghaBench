
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int call_int_hook (int ,int ,struct vfsmount*,int) ;
 int sb_umount ;

int security_sb_umount(struct vfsmount *mnt, int flags)
{
 return call_int_hook(sb_umount, 0, mnt, flags);
}
