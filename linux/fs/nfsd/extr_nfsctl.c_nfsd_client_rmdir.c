
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {struct dentry* d_parent; } ;


 int WARN_ON_ONCE (int) ;
 int clear_ncl (struct inode*) ;
 int d_delete (struct dentry*) ;
 struct inode* d_inode (struct dentry*) ;
 int dget (struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int nfsdfs_remove_files (struct dentry*) ;
 int simple_rmdir (struct inode*,struct dentry*) ;

void nfsd_client_rmdir(struct dentry *dentry)
{
 struct inode *dir = d_inode(dentry->d_parent);
 struct inode *inode = d_inode(dentry);
 int ret;

 inode_lock(dir);
 nfsdfs_remove_files(dentry);
 clear_ncl(inode);
 dget(dentry);
 ret = simple_rmdir(dir, dentry);
 WARN_ON_ONCE(ret);
 d_delete(dentry);
 inode_unlock(dir);
}
