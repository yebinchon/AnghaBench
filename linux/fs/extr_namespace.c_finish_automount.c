
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {scalar_t__ mnt_sb; scalar_t__ mnt_root; } ;
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct mount {int mnt_expire; } ;
struct TYPE_2__ {scalar_t__ mnt_sb; int mnt_flags; } ;


 int BUG_ON (int) ;
 int ELOOP ;
 int MNT_SHRINKABLE ;
 int do_add_mount (struct mount*,struct path*,int) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mnt_get_count (struct mount*) ;
 int mntput (struct vfsmount*) ;
 int namespace_lock () ;
 int namespace_unlock () ;
 struct mount* real_mount (struct vfsmount*) ;

int finish_automount(struct vfsmount *m, struct path *path)
{
 struct mount *mnt = real_mount(m);
 int err;



 BUG_ON(mnt_get_count(mnt) < 2);

 if (m->mnt_sb == path->mnt->mnt_sb &&
     m->mnt_root == path->dentry) {
  err = -ELOOP;
  goto fail;
 }

 err = do_add_mount(mnt, path, path->mnt->mnt_flags | MNT_SHRINKABLE);
 if (!err)
  return 0;
fail:

 if (!list_empty(&mnt->mnt_expire)) {
  namespace_lock();
  list_del_init(&mnt->mnt_expire);
  namespace_unlock();
 }
 mntput(m);
 mntput(m);
 return err;
}
