
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int (* rmdir ) (char*) ;} ;


 int ENOMEM ;
 int I_MUTEX_PARENT ;
 char* get_dname (struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;
 int kfree (char*) ;
 int stub1 (char*) ;
 TYPE_1__ tracefs_ops ;

__attribute__((used)) static int tracefs_syscall_rmdir(struct inode *inode, struct dentry *dentry)
{
 char *name;
 int ret;

 name = get_dname(dentry);
 if (!name)
  return -ENOMEM;
 inode_unlock(inode);
 inode_unlock(dentry->d_inode);

 ret = tracefs_ops.rmdir(name);

 inode_lock_nested(inode, I_MUTEX_PARENT);
 inode_lock(dentry->d_inode);

 kfree(name);

 return ret;
}
