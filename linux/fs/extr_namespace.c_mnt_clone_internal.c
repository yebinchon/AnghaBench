
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_flags; } ;
struct path {int dentry; int mnt; } ;
struct mount {struct vfsmount mnt; } ;


 int CL_PRIVATE ;
 struct vfsmount* ERR_CAST (struct mount*) ;
 scalar_t__ IS_ERR (struct mount*) ;
 int MNT_INTERNAL ;
 struct mount* clone_mnt (int ,int ,int ) ;
 int real_mount (int ) ;

struct vfsmount *mnt_clone_internal(const struct path *path)
{
 struct mount *p;
 p = clone_mnt(real_mount(path->mnt), path->dentry, CL_PRIVATE);
 if (IS_ERR(p))
  return ERR_CAST(p);
 p->mnt.mnt_flags |= MNT_INTERNAL;
 return &p->mnt;
}
