
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {scalar_t__ mnt_root; } ;


 int EINVAL ;
 int MS_REC ;
 int MS_SHARED ;
 int change_mnt_propagation (struct mount*,int) ;
 int flags_to_propagation_type (int) ;
 int invent_group_ids (struct mount*,int) ;
 int lock_mount_hash () ;
 int namespace_lock () ;
 int namespace_unlock () ;
 struct mount* next_mnt (struct mount*,struct mount*) ;
 struct mount* real_mount (TYPE_1__*) ;
 int unlock_mount_hash () ;

__attribute__((used)) static int do_change_type(struct path *path, int ms_flags)
{
 struct mount *m;
 struct mount *mnt = real_mount(path->mnt);
 int recurse = ms_flags & MS_REC;
 int type;
 int err = 0;

 if (path->dentry != path->mnt->mnt_root)
  return -EINVAL;

 type = flags_to_propagation_type(ms_flags);
 if (!type)
  return -EINVAL;

 namespace_lock();
 if (type == MS_SHARED) {
  err = invent_group_ids(mnt, recurse);
  if (err)
   goto out_unlock;
 }

 lock_mount_hash();
 for (m = mnt; m; m = (recurse ? next_mnt(m, mnt) : ((void*)0)))
  change_mnt_propagation(m, type);
 unlock_mount_hash();

 out_unlock:
 namespace_unlock();
 return err;
}
