
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_parent; } ;


 struct inode* d_inode (int ) ;
 scalar_t__ d_is_dir (struct dentry*) ;
 int xattr_rmdir (struct inode*,struct dentry*) ;
 int xattr_unlink (struct inode*,struct dentry*) ;

__attribute__((used)) static int delete_one_xattr(struct dentry *dentry, void *data)
{
 struct inode *dir = d_inode(dentry->d_parent);


 if (d_is_dir(dentry))
  return xattr_rmdir(dir, dentry);

 return xattr_unlink(dir, dentry);
}
