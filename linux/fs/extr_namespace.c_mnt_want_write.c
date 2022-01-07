
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_sb; } ;


 int __mnt_want_write (struct vfsmount*) ;
 int sb_end_write (int ) ;
 int sb_start_write (int ) ;

int mnt_want_write(struct vfsmount *m)
{
 int ret;

 sb_start_write(m->mnt_sb);
 ret = __mnt_want_write(m);
 if (ret)
  sb_end_write(m->mnt_sb);
 return ret;
}
