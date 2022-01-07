
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {TYPE_1__* d_parent; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int S_IALLUGO ;
 int S_IFREG ;
 int fsnotify_create (struct inode*,struct dentry*) ;
 int may_create (struct inode*,struct dentry*) ;
 int security_inode_create (struct inode*,struct dentry*,int ) ;

int vfs_mkobj(struct dentry *dentry, umode_t mode,
  int (*f)(struct dentry *, umode_t, void *),
  void *arg)
{
 struct inode *dir = dentry->d_parent->d_inode;
 int error = may_create(dir, dentry);
 if (error)
  return error;

 mode &= S_IALLUGO;
 mode |= S_IFREG;
 error = security_inode_create(dir, dentry, mode);
 if (error)
  return error;
 error = f(dentry, mode, arg);
 if (!error)
  fsnotify_create(dir, dentry);
 return error;
}
