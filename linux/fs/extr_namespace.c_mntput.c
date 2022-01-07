
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct mount {scalar_t__ mnt_expiry_mark; } ;


 int mntput_no_expire (struct mount*) ;
 struct mount* real_mount (struct vfsmount*) ;
 scalar_t__ unlikely (scalar_t__) ;

void mntput(struct vfsmount *mnt)
{
 if (mnt) {
  struct mount *m = real_mount(mnt);

  if (unlikely(m->mnt_expiry_mark))
   m->mnt_expiry_mark = 0;
  mntput_no_expire(m);
 }
}
