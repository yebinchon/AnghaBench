
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct dentry {int d_lock; } ;
struct TYPE_2__ {int s_id; } ;


 int ENOENT ;
 int VFS ;
 int __d_drop (struct dentry*) ;
 int d_count (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int d_rehash (struct dentry*) ;
 int d_unhashed (struct dentry*) ;
 int dfprintk (int ,char*,int ,int ,struct dentry*) ;
 int nfs_safe_remove (struct dentry*) ;
 int nfs_save_change_attribute (struct inode*) ;
 int nfs_set_verifier (struct dentry*,int ) ;
 int nfs_sillyrename (struct inode*,struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_nfs_unlink_enter (struct inode*,struct dentry*) ;
 int trace_nfs_unlink_exit (struct inode*,struct dentry*,int) ;
 int write_inode_now (int ,int ) ;

int nfs_unlink(struct inode *dir, struct dentry *dentry)
{
 int error;
 int need_rehash = 0;

 dfprintk(VFS, "NFS: unlink(%s/%lu, %pd)\n", dir->i_sb->s_id,
  dir->i_ino, dentry);

 trace_nfs_unlink_enter(dir, dentry);
 spin_lock(&dentry->d_lock);
 if (d_count(dentry) > 1) {
  spin_unlock(&dentry->d_lock);

  write_inode_now(d_inode(dentry), 0);
  error = nfs_sillyrename(dir, dentry);
  goto out;
 }
 if (!d_unhashed(dentry)) {
  __d_drop(dentry);
  need_rehash = 1;
 }
 spin_unlock(&dentry->d_lock);
 error = nfs_safe_remove(dentry);
 if (!error || error == -ENOENT) {
  nfs_set_verifier(dentry, nfs_save_change_attribute(dir));
 } else if (need_rehash)
  d_rehash(dentry);
out:
 trace_nfs_unlink_exit(dir, dentry, error);
 return error;
}
