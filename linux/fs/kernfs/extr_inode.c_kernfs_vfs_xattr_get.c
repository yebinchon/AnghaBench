
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct kernfs_node {int dummy; } ;
struct inode {struct kernfs_node* i_private; } ;
struct dentry {int dummy; } ;


 int kernfs_xattr_get (struct kernfs_node*,char const*,void*,size_t) ;
 char* xattr_full_name (struct xattr_handler const*,char const*) ;

__attribute__((used)) static int kernfs_vfs_xattr_get(const struct xattr_handler *handler,
    struct dentry *unused, struct inode *inode,
    const char *suffix, void *value, size_t size)
{
 const char *name = xattr_full_name(handler, suffix);
 struct kernfs_node *kn = inode->i_private;

 return kernfs_xattr_get(kn, name, value, size);
}
