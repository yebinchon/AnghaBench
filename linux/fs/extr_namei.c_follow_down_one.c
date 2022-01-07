
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_root; } ;
struct path {int dentry; struct vfsmount* mnt; } ;


 int dget (int ) ;
 int dput (int ) ;
 struct vfsmount* lookup_mnt (struct path*) ;
 int mntput (struct vfsmount*) ;

int follow_down_one(struct path *path)
{
 struct vfsmount *mounted;

 mounted = lookup_mnt(path);
 if (mounted) {
  dput(path->dentry);
  mntput(path->mnt);
  path->mnt = mounted;
  path->dentry = dget(mounted->mnt_root);
  return 1;
 }
 return 0;
}
