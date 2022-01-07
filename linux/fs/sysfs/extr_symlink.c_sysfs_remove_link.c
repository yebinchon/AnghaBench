
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;


 int kernfs_remove_by_name (struct kernfs_node*,char const*) ;
 struct kernfs_node* sysfs_root_kn ;

void sysfs_remove_link(struct kobject *kobj, const char *name)
{
 struct kernfs_node *parent = ((void*)0);

 if (!kobj)
  parent = sysfs_root_kn;
 else
  parent = kobj->sd;

 kernfs_remove_by_name(parent, name);
}
