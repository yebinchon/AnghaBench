
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* mkdir ) (char*) ;} ;


 int ENOMEM ;
 char* get_dname (struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int kfree (char*) ;
 int stub1 (char*) ;
 TYPE_1__ tracefs_ops ;

__attribute__((used)) static int tracefs_syscall_mkdir(struct inode *inode, struct dentry *dentry, umode_t mode)
{
 char *name;
 int ret;

 name = get_dname(dentry);
 if (!name)
  return -ENOMEM;






 inode_unlock(inode);
 ret = tracefs_ops.mkdir(name);
 inode_lock(inode);

 kfree(name);

 return ret;
}
