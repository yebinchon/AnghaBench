
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct nfs_unlinkdata {struct dentry* dentry; int wq; TYPE_1__ args; } ;
struct inode {int dummy; } ;
struct dentry {int d_flags; int d_lock; struct nfs_unlinkdata* d_fsdata; int d_parent; } ;
struct TYPE_4__ {int rmdir_sem; } ;


 int DCACHE_NFSFS_RENAMED ;
 scalar_t__ IS_ERR (struct dentry*) ;
 TYPE_2__* NFS_I (struct inode*) ;
 struct dentry* d_alloc_parallel (int ,int *,int *) ;
 int d_in_lookup (struct dentry*) ;
 struct inode* d_inode (int ) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int down_read_non_owner (int *) ;
 int dput (struct dentry*) ;
 int kfree (void*) ;
 int nfs_do_call_unlink (struct inode*,struct nfs_unlinkdata*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read_non_owner (int *) ;

__attribute__((used)) static int nfs_call_unlink(struct dentry *dentry, struct inode *inode, struct nfs_unlinkdata *data)
{
 struct inode *dir = d_inode(dentry->d_parent);
 struct dentry *alias;

 down_read_non_owner(&NFS_I(dir)->rmdir_sem);
 alias = d_alloc_parallel(dentry->d_parent, &data->args.name, &data->wq);
 if (IS_ERR(alias)) {
  up_read_non_owner(&NFS_I(dir)->rmdir_sem);
  return 0;
 }
 if (!d_in_lookup(alias)) {
  int ret;
  void *devname_garbage = ((void*)0);





  spin_lock(&alias->d_lock);
  if (d_really_is_positive(alias) &&
      !(alias->d_flags & DCACHE_NFSFS_RENAMED)) {
   devname_garbage = alias->d_fsdata;
   alias->d_fsdata = data;
   alias->d_flags |= DCACHE_NFSFS_RENAMED;
   ret = 1;
  } else
   ret = 0;
  spin_unlock(&alias->d_lock);
  dput(alias);
  up_read_non_owner(&NFS_I(dir)->rmdir_sem);





  kfree(devname_garbage);
  return ret;
 }
 data->dentry = alias;
 nfs_do_call_unlink(inode, data);
 return 1;
}
