
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct mnt_namespace {int dummy; } ;
struct TYPE_3__ {struct mnt_namespace* mnt_ns; } ;


 int UMOUNT_CONNECTED ;
 int free_mnt_ns (struct mnt_namespace*) ;
 scalar_t__ is_anon_ns (struct mnt_namespace*) ;
 int lock_mount_hash () ;
 int namespace_lock () ;
 int namespace_unlock () ;
 TYPE_1__* real_mount (struct vfsmount*) ;
 int umount_tree (TYPE_1__*,int ) ;
 int unlock_mount_hash () ;

void dissolve_on_fput(struct vfsmount *mnt)
{
 struct mnt_namespace *ns;
 namespace_lock();
 lock_mount_hash();
 ns = real_mount(mnt)->mnt_ns;
 if (ns) {
  if (is_anon_ns(ns))
   umount_tree(real_mount(mnt), UMOUNT_CONNECTED);
  else
   ns = ((void*)0);
 }
 unlock_mount_hash();
 namespace_unlock();
 if (ns)
  free_mnt_ns(ns);
}
