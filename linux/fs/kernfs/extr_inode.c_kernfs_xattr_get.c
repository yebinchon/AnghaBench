
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;
struct kernfs_iattrs {int xattrs; } ;


 int ENODATA ;
 struct kernfs_iattrs* kernfs_iattrs_noalloc (struct kernfs_node*) ;
 int simple_xattr_get (int *,char const*,void*,size_t) ;

int kernfs_xattr_get(struct kernfs_node *kn, const char *name,
       void *value, size_t size)
{
 struct kernfs_iattrs *attrs = kernfs_iattrs_noalloc(kn);
 if (!attrs)
  return -ENODATA;

 return simple_xattr_get(&attrs->xattrs, name, value, size);
}
