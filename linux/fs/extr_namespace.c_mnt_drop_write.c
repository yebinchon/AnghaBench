
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_sb; } ;


 int __mnt_drop_write (struct vfsmount*) ;
 int sb_end_write (int ) ;

void mnt_drop_write(struct vfsmount *mnt)
{
 __mnt_drop_write(mnt);
 sb_end_write(mnt->mnt_sb);
}
