
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_mounts; int mnt_mountpoint; int mnt; struct mount* mnt_parent; } ;


 struct mount* __lookup_mnt (int *,int ) ;
 int do_refcount_check (struct mount*,int) ;
 struct mount* find_topper (struct mount*) ;
 int list_empty (int *) ;
 struct mount* propagation_next (struct mount*,struct mount*) ;

int propagate_mount_busy(struct mount *mnt, int refcnt)
{
 struct mount *m, *child, *topper;
 struct mount *parent = mnt->mnt_parent;

 if (mnt == parent)
  return do_refcount_check(mnt, refcnt);






 if (!list_empty(&mnt->mnt_mounts) || do_refcount_check(mnt, refcnt))
  return 1;

 for (m = propagation_next(parent, parent); m;
        m = propagation_next(m, parent)) {
  int count = 1;
  child = __lookup_mnt(&m->mnt, mnt->mnt_mountpoint);
  if (!child)
   continue;




  topper = find_topper(child);
  if (topper)
   count += 1;
  else if (!list_empty(&child->mnt_mounts))
   continue;

  if (do_refcount_check(child, count))
   return 1;
 }
 return 0;
}
