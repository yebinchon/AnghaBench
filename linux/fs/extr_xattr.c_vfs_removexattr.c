
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int MAY_WRITE ;
 int __vfs_removexattr (struct dentry*,char const*) ;
 int evm_inode_post_removexattr (struct dentry*,char const*) ;
 int fsnotify_xattr (struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int security_inode_removexattr (struct dentry*,char const*) ;
 int xattr_permission (struct inode*,char const*,int ) ;

int
vfs_removexattr(struct dentry *dentry, const char *name)
{
 struct inode *inode = dentry->d_inode;
 int error;

 error = xattr_permission(inode, name, MAY_WRITE);
 if (error)
  return error;

 inode_lock(inode);
 error = security_inode_removexattr(dentry, name);
 if (error)
  goto out;

 error = __vfs_removexattr(dentry, name);

 if (!error) {
  fsnotify_xattr(dentry);
  evm_inode_post_removexattr(dentry, name);
 }

out:
 inode_unlock(inode);
 return error;
}
