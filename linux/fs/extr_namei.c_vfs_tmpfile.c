
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int i_lock; int i_state; TYPE_1__* i_op; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int (* tmpfile ) (struct inode*,struct dentry*,int ) ;} ;


 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct dentry* ERR_PTR (int) ;
 int I_LINKABLE ;
 int MAY_EXEC ;
 int MAY_WRITE ;
 int O_EXCL ;
 struct dentry* d_alloc (struct dentry*,int *) ;
 int dput (struct dentry*) ;
 int ima_post_create_tmpfile (struct inode*) ;
 int inode_permission (struct inode*,int) ;
 int slash_name ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct inode*,struct dentry*,int ) ;
 scalar_t__ unlikely (int) ;

struct dentry *vfs_tmpfile(struct dentry *dentry, umode_t mode, int open_flag)
{
 struct dentry *child = ((void*)0);
 struct inode *dir = dentry->d_inode;
 struct inode *inode;
 int error;


 error = inode_permission(dir, MAY_WRITE | MAY_EXEC);
 if (error)
  goto out_err;
 error = -EOPNOTSUPP;
 if (!dir->i_op->tmpfile)
  goto out_err;
 error = -ENOMEM;
 child = d_alloc(dentry, &slash_name);
 if (unlikely(!child))
  goto out_err;
 error = dir->i_op->tmpfile(dir, child, mode);
 if (error)
  goto out_err;
 error = -ENOENT;
 inode = child->d_inode;
 if (unlikely(!inode))
  goto out_err;
 if (!(open_flag & O_EXCL)) {
  spin_lock(&inode->i_lock);
  inode->i_state |= I_LINKABLE;
  spin_unlock(&inode->i_lock);
 }
 ima_post_create_tmpfile(inode);
 return child;

out_err:
 dput(child);
 return ERR_PTR(error);
}
