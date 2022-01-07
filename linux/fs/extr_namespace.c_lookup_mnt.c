
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {int dentry; int mnt; } ;
struct mount {struct vfsmount mnt; } ;


 struct mount* __lookup_mnt (int ,int ) ;
 int legitimize_mnt (struct vfsmount*,unsigned int) ;
 int mount_lock ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned int read_seqbegin (int *) ;

struct vfsmount *lookup_mnt(const struct path *path)
{
 struct mount *child_mnt;
 struct vfsmount *m;
 unsigned seq;

 rcu_read_lock();
 do {
  seq = read_seqbegin(&mount_lock);
  child_mnt = __lookup_mnt(path->mnt, path->dentry);
  m = child_mnt ? &child_mnt->mnt : ((void*)0);
 } while (!legitimize_mnt(m, seq));
 rcu_read_unlock();
 return m;
}
