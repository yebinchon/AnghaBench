
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct dentry {int dummy; } ;


 int AT_FDCWD ;
 int filename_lookup (int ,int ,unsigned int,struct path*,struct path*) ;
 int getname_kernel (char const*) ;

int vfs_path_lookup(struct dentry *dentry, struct vfsmount *mnt,
      const char *name, unsigned int flags,
      struct path *path)
{
 struct path root = {.mnt = mnt, .dentry = dentry};

 return filename_lookup(AT_FDCWD, getname_kernel(name),
          flags , path, &root);
}
