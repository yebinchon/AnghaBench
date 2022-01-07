
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfsmount {int mnt_root; } ;
struct path {TYPE_2__* dentry; struct vfsmount* mnt; } ;
struct TYPE_5__ {TYPE_1__* d_op; int d_flags; } ;
struct TYPE_4__ {int (* d_manage ) (struct path*,int) ;} ;


 int BUG_ON (int) ;
 unsigned int DCACHE_MANAGED_DENTRY ;
 unsigned int DCACHE_MANAGE_TRANSIT ;
 unsigned int DCACHE_MOUNTED ;
 int EISDIR ;
 unsigned int READ_ONCE (int ) ;
 TYPE_2__* dget (int ) ;
 int dput (TYPE_2__*) ;
 struct vfsmount* lookup_mnt (struct path*) ;
 int mntput (struct vfsmount*) ;
 int stub1 (struct path*,int) ;
 int unlikely (unsigned int) ;

int follow_down(struct path *path)
{
 unsigned managed;
 int ret;

 while (managed = READ_ONCE(path->dentry->d_flags),
        unlikely(managed & DCACHE_MANAGED_DENTRY)) {
  if (managed & DCACHE_MANAGE_TRANSIT) {
   BUG_ON(!path->dentry->d_op);
   BUG_ON(!path->dentry->d_op->d_manage);
   ret = path->dentry->d_op->d_manage(path, 0);
   if (ret < 0)
    return ret == -EISDIR ? 0 : ret;
  }


  if (managed & DCACHE_MOUNTED) {
   struct vfsmount *mounted = lookup_mnt(path);
   if (!mounted)
    break;
   dput(path->dentry);
   mntput(path->mnt);
   path->mnt = mounted;
   path->dentry = dget(mounted->mnt_root);
   continue;
  }


  break;
 }
 return 0;
}
