
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int I_MUTEX_PARENT ;
 int __rpc_rmdir (struct inode*,struct dentry*) ;
 struct inode* d_inode (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;

__attribute__((used)) static int rpc_rmdir_depopulate(struct dentry *dentry,
  void (*depopulate)(struct dentry *))
{
 struct dentry *parent;
 struct inode *dir;
 int error;

 parent = dget_parent(dentry);
 dir = d_inode(parent);
 inode_lock_nested(dir, I_MUTEX_PARENT);
 if (depopulate != ((void*)0))
  depopulate(dentry);
 error = __rpc_rmdir(dir, dentry);
 inode_unlock(dir);
 dput(parent);
 return error;
}
