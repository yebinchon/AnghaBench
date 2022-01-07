
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int tk_status; scalar_t__ tk_calldata; } ;
struct nfs_renamedata {int cancelled; } ;
struct inode {int i_lock; int i_mode; } ;
struct dentry {int d_name; int d_parent; } ;
struct TYPE_2__ {int cache_validity; int attr_gencount; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct rpc_task*) ;
 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_CHANGE ;
 int NFS_INO_INVALID_CTIME ;
 int NFS_INO_REVAL_FORCED ;
 int PTR_ERR (struct rpc_task*) ;
 int S_ISDIR (int ) ;
 int VFS ;
 struct dentry* d_alloc (int ,int *) ;
 int d_count (struct dentry*) ;
 int d_drop (struct dentry*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_move (struct dentry*,struct dentry*) ;
 int d_rehash (struct dentry*) ;
 int d_unhashed (struct dentry*) ;
 int dfprintk (int ,char*,struct dentry*,struct dentry*,int) ;
 int dput (struct dentry*) ;
 struct rpc_task* nfs_async_rename (struct inode*,struct inode*,struct dentry*,struct dentry*,int *) ;
 int nfs_dentry_handle_enoent (struct dentry*) ;
 int nfs_drop_nlink (struct inode*) ;
 int nfs_inc_attr_generation_counter () ;
 int nfs_save_change_attribute (struct inode*) ;
 int nfs_set_verifier (struct dentry*,int ) ;
 int nfs_sillyrename (struct inode*,struct dentry*) ;
 int rpc_put_task (struct rpc_task*) ;
 int rpc_wait_for_completion_task (struct rpc_task*) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_nfs_rename_enter (struct inode*,struct dentry*,struct inode*,struct dentry*) ;
 int trace_nfs_rename_exit (struct inode*,struct dentry*,struct inode*,struct dentry*,int) ;

int nfs_rename(struct inode *old_dir, struct dentry *old_dentry,
        struct inode *new_dir, struct dentry *new_dentry,
        unsigned int flags)
{
 struct inode *old_inode = d_inode(old_dentry);
 struct inode *new_inode = d_inode(new_dentry);
 struct dentry *dentry = ((void*)0), *rehash = ((void*)0);
 struct rpc_task *task;
 int error = -EBUSY;

 if (flags)
  return -EINVAL;

 dfprintk(VFS, "NFS: rename(%pd2 -> %pd2, ct=%d)\n",
   old_dentry, new_dentry,
   d_count(new_dentry));

 trace_nfs_rename_enter(old_dir, old_dentry, new_dir, new_dentry);






 if (new_inode && !S_ISDIR(new_inode->i_mode)) {




  if (!d_unhashed(new_dentry)) {
   d_drop(new_dentry);
   rehash = new_dentry;
  }

  if (d_count(new_dentry) > 2) {
   int err;


   dentry = d_alloc(new_dentry->d_parent,
      &new_dentry->d_name);
   if (!dentry)
    goto out;


   err = nfs_sillyrename(new_dir, new_dentry);
   if (err)
    goto out;

   new_dentry = dentry;
   rehash = ((void*)0);
   new_inode = ((void*)0);
  }
 }

 task = nfs_async_rename(old_dir, new_dir, old_dentry, new_dentry, ((void*)0));
 if (IS_ERR(task)) {
  error = PTR_ERR(task);
  goto out;
 }

 error = rpc_wait_for_completion_task(task);
 if (error != 0) {
  ((struct nfs_renamedata *)task->tk_calldata)->cancelled = 1;

  smp_wmb();
 } else
  error = task->tk_status;
 rpc_put_task(task);

 if (error == 0) {
  spin_lock(&old_inode->i_lock);
  NFS_I(old_inode)->attr_gencount = nfs_inc_attr_generation_counter();
  NFS_I(old_inode)->cache_validity |= NFS_INO_INVALID_CHANGE
   | NFS_INO_INVALID_CTIME
   | NFS_INO_REVAL_FORCED;
  spin_unlock(&old_inode->i_lock);
 }
out:
 if (rehash)
  d_rehash(rehash);
 trace_nfs_rename_exit(old_dir, old_dentry,
   new_dir, new_dentry, error);
 if (!error) {
  if (new_inode != ((void*)0))
   nfs_drop_nlink(new_inode);






  d_move(old_dentry, new_dentry);
  nfs_set_verifier(old_dentry,
     nfs_save_change_attribute(new_dir));
 } else if (error == -ENOENT)
  nfs_dentry_handle_enoent(old_dentry);


 if (dentry)
  dput(dentry);
 return error;
}
