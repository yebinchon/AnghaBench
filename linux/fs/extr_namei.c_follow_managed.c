
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfsmount {int mnt_root; } ;
struct path {struct vfsmount* mnt; TYPE_2__* dentry; } ;
struct nameidata {int flags; } ;
struct TYPE_5__ {TYPE_1__* d_op; int d_flags; } ;
struct TYPE_4__ {int (* d_manage ) (struct path*,int) ;} ;


 int BUG_ON (int) ;
 unsigned int DCACHE_MANAGED_DENTRY ;
 unsigned int DCACHE_MANAGE_TRANSIT ;
 unsigned int DCACHE_MOUNTED ;
 unsigned int DCACHE_NEED_AUTOMOUNT ;
 int EISDIR ;
 int LOOKUP_JUMPED ;
 unsigned int READ_ONCE (int ) ;
 TYPE_2__* dget (int ) ;
 int dput (TYPE_2__*) ;
 int follow_automount (struct path*,struct nameidata*,int*) ;
 struct vfsmount* lookup_mnt (struct path*) ;
 int mntput (struct vfsmount*) ;
 int path_put_conditional (struct path*,struct nameidata*) ;
 int stub1 (struct path*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int follow_managed(struct path *path, struct nameidata *nd)
{
 struct vfsmount *mnt = path->mnt;
 unsigned managed;
 bool need_mntput = 0;
 int ret = 0;




 while (managed = READ_ONCE(path->dentry->d_flags),
        managed &= DCACHE_MANAGED_DENTRY,
        unlikely(managed != 0)) {


  if (managed & DCACHE_MANAGE_TRANSIT) {
   BUG_ON(!path->dentry->d_op);
   BUG_ON(!path->dentry->d_op->d_manage);
   ret = path->dentry->d_op->d_manage(path, 0);
   if (ret < 0)
    break;
  }


  if (managed & DCACHE_MOUNTED) {
   struct vfsmount *mounted = lookup_mnt(path);
   if (mounted) {
    dput(path->dentry);
    if (need_mntput)
     mntput(path->mnt);
    path->mnt = mounted;
    path->dentry = dget(mounted->mnt_root);
    need_mntput = 1;
    continue;
   }





  }


  if (managed & DCACHE_NEED_AUTOMOUNT) {
   ret = follow_automount(path, nd, &need_mntput);
   if (ret < 0)
    break;
   continue;
  }


  break;
 }

 if (need_mntput && path->mnt == mnt)
  mntput(path->mnt);
 if (ret == -EISDIR || !ret)
  ret = 1;
 if (need_mntput)
  nd->flags |= LOOKUP_JUMPED;
 if (unlikely(ret < 0))
  path_put_conditional(path, nd);
 return ret;
}
