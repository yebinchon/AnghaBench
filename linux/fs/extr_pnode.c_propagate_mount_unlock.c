
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt_flags; } ;
struct mount {TYPE_1__ mnt; int mnt_mountpoint; struct mount* mnt_parent; } ;


 int BUG_ON (int) ;
 int MNT_LOCKED ;
 struct mount* __lookup_mnt (TYPE_1__*,int ) ;
 struct mount* propagation_next (struct mount*,struct mount*) ;

void propagate_mount_unlock(struct mount *mnt)
{
 struct mount *parent = mnt->mnt_parent;
 struct mount *m, *child;

 BUG_ON(parent == mnt);

 for (m = propagation_next(parent, parent); m;
   m = propagation_next(m, parent)) {
  child = __lookup_mnt(&m->mnt, mnt->mnt_mountpoint);
  if (child)
   child->mnt.mnt_flags &= ~MNT_LOCKED;
 }
}
