
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_unlinkdata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int d_lock; struct nfs_unlinkdata* d_fsdata; int d_flags; } ;


 int DCACHE_NFSFS_RENAMED ;
 scalar_t__ NFS_STALE (struct inode*) ;
 int nfs_call_unlink (struct dentry*,struct inode*,struct nfs_unlinkdata*) ;
 int nfs_free_unlinkdata (struct nfs_unlinkdata*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
nfs_complete_unlink(struct dentry *dentry, struct inode *inode)
{
 struct nfs_unlinkdata *data;

 spin_lock(&dentry->d_lock);
 dentry->d_flags &= ~DCACHE_NFSFS_RENAMED;
 data = dentry->d_fsdata;
 dentry->d_fsdata = ((void*)0);
 spin_unlock(&dentry->d_lock);

 if (NFS_STALE(inode) || !nfs_call_unlink(dentry, inode, data))
  nfs_free_unlinkdata(data);
}
