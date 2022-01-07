
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {scalar_t__ dentry; TYPE_2__* mnt; } ;
struct mountpoint {int dummy; } ;
struct TYPE_3__ {scalar_t__ mnt_sb; int mnt_flags; int mnt_root; } ;
struct mount {TYPE_1__ mnt; int mnt_ns; } ;
struct TYPE_4__ {scalar_t__ mnt_sb; scalar_t__ mnt_root; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct mountpoint*) ;
 int MNT_INTERNAL_FLAGS ;
 int MNT_SHRINKABLE ;
 int PTR_ERR (struct mountpoint*) ;
 int check_mnt (struct mount*) ;
 scalar_t__ d_is_symlink (int ) ;
 int graft_tree (struct mount*,struct mount*,struct mountpoint*) ;
 struct mountpoint* lock_mount (struct path*) ;
 struct mount* real_mount (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;
 int unlock_mount (struct mountpoint*) ;

__attribute__((used)) static int do_add_mount(struct mount *newmnt, struct path *path, int mnt_flags)
{
 struct mountpoint *mp;
 struct mount *parent;
 int err;

 mnt_flags &= ~MNT_INTERNAL_FLAGS;

 mp = lock_mount(path);
 if (IS_ERR(mp))
  return PTR_ERR(mp);

 parent = real_mount(path->mnt);
 err = -EINVAL;
 if (unlikely(!check_mnt(parent))) {

  if (!(mnt_flags & MNT_SHRINKABLE))
   goto unlock;

  if (!parent->mnt_ns)
   goto unlock;
 }


 err = -EBUSY;
 if (path->mnt->mnt_sb == newmnt->mnt.mnt_sb &&
     path->mnt->mnt_root == path->dentry)
  goto unlock;

 err = -EINVAL;
 if (d_is_symlink(newmnt->mnt.mnt_root))
  goto unlock;

 newmnt->mnt.mnt_flags = mnt_flags;
 err = graft_tree(newmnt, parent, mp);

unlock:
 unlock_mount(mp);
 return err;
}
