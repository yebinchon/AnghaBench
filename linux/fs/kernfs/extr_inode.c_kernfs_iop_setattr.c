
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;
struct inode {struct kernfs_node* i_private; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 int __kernfs_setattr (struct kernfs_node*,struct iattr*) ;
 struct inode* d_inode (struct dentry*) ;
 int kernfs_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;

int kernfs_iop_setattr(struct dentry *dentry, struct iattr *iattr)
{
 struct inode *inode = d_inode(dentry);
 struct kernfs_node *kn = inode->i_private;
 int error;

 if (!kn)
  return -EINVAL;

 mutex_lock(&kernfs_mutex);
 error = setattr_prepare(dentry, iattr);
 if (error)
  goto out;

 error = __kernfs_setattr(kn, iattr);
 if (error)
  goto out;


 setattr_copy(inode, iattr);

out:
 mutex_unlock(&kernfs_mutex);
 return error;
}
