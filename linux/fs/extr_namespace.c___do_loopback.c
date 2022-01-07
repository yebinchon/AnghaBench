
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct path {TYPE_2__* dentry; int mnt; } ;
struct TYPE_5__ {int mnt_flags; } ;
struct mount {TYPE_1__ mnt; } ;
struct TYPE_6__ {int * d_op; } ;


 int CL_COPY_MNT_NS_FILE ;
 int EINVAL ;
 struct mount* ERR_PTR (int ) ;
 int IS_ERR (struct mount*) ;
 scalar_t__ IS_MNT_UNBINDABLE (struct mount*) ;
 int MNT_LOCKED ;
 int check_mnt (struct mount*) ;
 struct mount* clone_mnt (struct mount*,TYPE_2__*,int ) ;
 struct mount* copy_tree (struct mount*,TYPE_2__*,int ) ;
 scalar_t__ has_locked_children (struct mount*,TYPE_2__*) ;
 int ns_dentry_operations ;
 struct mount* real_mount (int ) ;

__attribute__((used)) static struct mount *__do_loopback(struct path *old_path, int recurse)
{
 struct mount *mnt = ERR_PTR(-EINVAL), *old = real_mount(old_path->mnt);

 if (IS_MNT_UNBINDABLE(old))
  return mnt;

 if (!check_mnt(old) && old_path->dentry->d_op != &ns_dentry_operations)
  return mnt;

 if (!recurse && has_locked_children(old, old_path->dentry))
  return mnt;

 if (recurse)
  mnt = copy_tree(old, old_path->dentry, CL_COPY_MNT_NS_FILE);
 else
  mnt = clone_mnt(old, old_path->dentry, 0);

 if (!IS_ERR(mnt))
  mnt->mnt.mnt_flags &= ~MNT_LOCKED;

 return mnt;
}
