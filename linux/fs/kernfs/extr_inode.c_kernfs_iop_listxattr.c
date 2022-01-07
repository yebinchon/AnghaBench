
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;
struct kernfs_iattrs {int xattrs; } ;
struct dentry {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int d_inode (struct dentry*) ;
 struct kernfs_node* kernfs_dentry_node (struct dentry*) ;
 struct kernfs_iattrs* kernfs_iattrs (struct kernfs_node*) ;
 int simple_xattr_list (int ,int *,char*,size_t) ;

ssize_t kernfs_iop_listxattr(struct dentry *dentry, char *buf, size_t size)
{
 struct kernfs_node *kn = kernfs_dentry_node(dentry);
 struct kernfs_iattrs *attrs;

 attrs = kernfs_iattrs(kn);
 if (!attrs)
  return -ENOMEM;

 return simple_xattr_list(d_inode(dentry), &attrs->xattrs, buf, size);
}
