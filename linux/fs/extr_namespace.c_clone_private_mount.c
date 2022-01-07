
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {int dentry; int mnt; } ;
struct mount {struct vfsmount mnt; } ;


 int CL_PRIVATE ;
 int EINVAL ;
 struct vfsmount* ERR_CAST (struct mount*) ;
 struct vfsmount* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct mount*) ;
 scalar_t__ IS_MNT_UNBINDABLE (struct mount*) ;
 struct mount* clone_mnt (struct mount*,int ,int ) ;
 struct mount* real_mount (int ) ;

struct vfsmount *clone_private_mount(const struct path *path)
{
 struct mount *old_mnt = real_mount(path->mnt);
 struct mount *new_mnt;

 if (IS_MNT_UNBINDABLE(old_mnt))
  return ERR_PTR(-EINVAL);

 new_mnt = clone_mnt(old_mnt, path->dentry, CL_PRIVATE);
 if (IS_ERR(new_mnt))
  return ERR_CAST(new_mnt);

 return &new_mnt->mnt;
}
