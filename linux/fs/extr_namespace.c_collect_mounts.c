
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {int dentry; int mnt; } ;
struct mount {struct vfsmount mnt; } ;


 int CL_COPY_ALL ;
 int CL_PRIVATE ;
 int EINVAL ;
 struct vfsmount* ERR_CAST (struct mount*) ;
 struct mount* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct mount*) ;
 int check_mnt (int ) ;
 struct mount* copy_tree (int ,int ,int) ;
 int namespace_lock () ;
 int namespace_unlock () ;
 int real_mount (int ) ;

struct vfsmount *collect_mounts(const struct path *path)
{
 struct mount *tree;
 namespace_lock();
 if (!check_mnt(real_mount(path->mnt)))
  tree = ERR_PTR(-EINVAL);
 else
  tree = copy_tree(real_mount(path->mnt), path->dentry,
     CL_COPY_ALL | CL_PRIVATE);
 namespace_unlock();
 if (IS_ERR(tree))
  return ERR_CAST(tree);
 return &tree->mnt;
}
