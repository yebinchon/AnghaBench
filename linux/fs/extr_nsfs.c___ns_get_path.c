
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int mnt_sb; } ;
struct path {struct dentry* dentry; int mnt; } ;
struct ns_common {int stashed; TYPE_1__* ops; int inum; } ;
struct inode {int i_mode; struct ns_common* i_private; int * i_fop; int i_flags; int i_ctime; int i_atime; int i_mtime; int i_ino; } ;
struct dentry {void* d_fsdata; int d_lockref; } ;
struct TYPE_2__ {int (* put ) (struct ns_common*) ;} ;


 int EAGAIN ;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int S_IFREG ;
 int S_IMMUTABLE ;
 int S_IRUGO ;
 unsigned long atomic_long_cmpxchg (int *,int ,unsigned long) ;
 unsigned long atomic_long_read (int *) ;
 int cpu_relax () ;
 int current_time (struct inode*) ;
 struct dentry* d_alloc_anon (int ) ;
 int d_delete (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dput (struct dentry*) ;
 int iput (struct inode*) ;
 int lockref_get_not_dead (int *) ;
 int mntget (struct vfsmount*) ;
 struct inode* new_inode_pseudo (int ) ;
 int ns_file_operations ;
 struct vfsmount* nsfs_mnt ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct ns_common*) ;
 int stub2 (struct ns_common*) ;

__attribute__((used)) static void *__ns_get_path(struct path *path, struct ns_common *ns)
{
 struct vfsmount *mnt = nsfs_mnt;
 struct dentry *dentry;
 struct inode *inode;
 unsigned long d;

 rcu_read_lock();
 d = atomic_long_read(&ns->stashed);
 if (!d)
  goto slow;
 dentry = (struct dentry *)d;
 if (!lockref_get_not_dead(&dentry->d_lockref))
  goto slow;
 rcu_read_unlock();
 ns->ops->put(ns);
got_it:
 path->mnt = mntget(mnt);
 path->dentry = dentry;
 return ((void*)0);
slow:
 rcu_read_unlock();
 inode = new_inode_pseudo(mnt->mnt_sb);
 if (!inode) {
  ns->ops->put(ns);
  return ERR_PTR(-ENOMEM);
 }
 inode->i_ino = ns->inum;
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 inode->i_flags |= S_IMMUTABLE;
 inode->i_mode = S_IFREG | S_IRUGO;
 inode->i_fop = &ns_file_operations;
 inode->i_private = ns;

 dentry = d_alloc_anon(mnt->mnt_sb);
 if (!dentry) {
  iput(inode);
  return ERR_PTR(-ENOMEM);
 }
 d_instantiate(dentry, inode);
 dentry->d_fsdata = (void *)ns->ops;
 d = atomic_long_cmpxchg(&ns->stashed, 0, (unsigned long)dentry);
 if (d) {
  d_delete(dentry);
  dput(dentry);
  cpu_relax();
  return ERR_PTR(-EAGAIN);
 }
 goto got_it;
}
