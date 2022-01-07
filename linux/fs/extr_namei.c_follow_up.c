
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int * mnt; struct dentry* dentry; } ;
struct mount {int mnt; int mnt_mountpoint; struct mount* mnt_parent; } ;
struct dentry {int dummy; } ;


 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int mntget (int *) ;
 int mntput (int *) ;
 int mount_lock ;
 int read_seqlock_excl (int *) ;
 int read_sequnlock_excl (int *) ;
 struct mount* real_mount (int *) ;

int follow_up(struct path *path)
{
 struct mount *mnt = real_mount(path->mnt);
 struct mount *parent;
 struct dentry *mountpoint;

 read_seqlock_excl(&mount_lock);
 parent = mnt->mnt_parent;
 if (parent == mnt) {
  read_sequnlock_excl(&mount_lock);
  return 0;
 }
 mntget(&parent->mnt);
 mountpoint = dget(mnt->mnt_mountpoint);
 read_sequnlock_excl(&mount_lock);
 dput(path->dentry);
 path->dentry = mountpoint;
 mntput(path->mnt);
 path->mnt = &parent->mnt;
 return 1;
}
