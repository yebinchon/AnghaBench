
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int I_MUTEX_PARENT ;
 int __rpc_rmpipe (struct inode*,struct dentry*) ;
 struct inode* d_inode (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;

int
rpc_unlink(struct dentry *dentry)
{
 struct dentry *parent;
 struct inode *dir;
 int error = 0;

 parent = dget_parent(dentry);
 dir = d_inode(parent);
 inode_lock_nested(dir, I_MUTEX_PARENT);
 error = __rpc_rmpipe(dir, dentry);
 inode_unlock(dir);
 dput(parent);
 return error;
}
