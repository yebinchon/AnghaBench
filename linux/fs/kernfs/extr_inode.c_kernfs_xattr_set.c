
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;
struct kernfs_iattrs {int xattrs; } ;


 int ENOMEM ;
 struct kernfs_iattrs* kernfs_iattrs (struct kernfs_node*) ;
 int simple_xattr_set (int *,char const*,void const*,size_t,int) ;

int kernfs_xattr_set(struct kernfs_node *kn, const char *name,
       const void *value, size_t size, int flags)
{
 struct kernfs_iattrs *attrs = kernfs_iattrs(kn);
 if (!attrs)
  return -ENOMEM;

 return simple_xattr_set(&attrs->xattrs, name, value, size, flags);
}
