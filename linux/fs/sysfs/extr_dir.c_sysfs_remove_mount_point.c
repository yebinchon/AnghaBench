
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;


 int kernfs_remove_by_name_ns (struct kernfs_node*,char const*,int *) ;

void sysfs_remove_mount_point(struct kobject *parent_kobj, const char *name)
{
 struct kernfs_node *parent = parent_kobj->sd;

 kernfs_remove_by_name_ns(parent, name, ((void*)0));
}
