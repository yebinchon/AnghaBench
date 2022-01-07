
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int sd; } ;
struct kernfs_node {int dummy; } ;


 struct kernfs_node* kernfs_get_parent (int ) ;
 int kernfs_put (struct kernfs_node*) ;
 int kernfs_rename_ns (int ,struct kernfs_node*,char const*,void const*) ;

int sysfs_rename_dir_ns(struct kobject *kobj, const char *new_name,
   const void *new_ns)
{
 struct kernfs_node *parent;
 int ret;

 parent = kernfs_get_parent(kobj->sd);
 ret = kernfs_rename_ns(kobj->sd, parent, new_name, new_ns);
 kernfs_put(parent);
 return ret;
}
