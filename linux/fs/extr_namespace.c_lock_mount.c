
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_root; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct mountpoint {int dummy; } ;
struct dentry {int d_inode; } ;


 int ENOENT ;
 struct mountpoint* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct mountpoint*) ;
 int cant_mount (struct dentry*) ;
 struct dentry* dget (int ) ;
 struct mountpoint* get_mountpoint (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 scalar_t__ likely (int) ;
 struct vfsmount* lookup_mnt (struct path*) ;
 int namespace_lock () ;
 int namespace_unlock () ;
 int path_put (struct path*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct mountpoint *lock_mount(struct path *path)
{
 struct vfsmount *mnt;
 struct dentry *dentry = path->dentry;
retry:
 inode_lock(dentry->d_inode);
 if (unlikely(cant_mount(dentry))) {
  inode_unlock(dentry->d_inode);
  return ERR_PTR(-ENOENT);
 }
 namespace_lock();
 mnt = lookup_mnt(path);
 if (likely(!mnt)) {
  struct mountpoint *mp = get_mountpoint(dentry);
  if (IS_ERR(mp)) {
   namespace_unlock();
   inode_unlock(dentry->d_inode);
   return mp;
  }
  return mp;
 }
 namespace_unlock();
 inode_unlock(path->dentry->d_inode);
 path_put(path);
 path->mnt = mnt;
 dentry = path->dentry = dget(mnt->mnt_root);
 goto retry;
}
