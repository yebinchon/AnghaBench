
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int sd; } ;
struct kernfs_node {int dummy; } ;


 struct kernfs_node* kernfs_find_and_get (int ,char const*) ;
 int kernfs_put (struct kernfs_node*) ;
 int kernfs_remove_by_name (struct kernfs_node*,char const*) ;

void sysfs_remove_link_from_group(struct kobject *kobj, const char *group_name,
      const char *link_name)
{
 struct kernfs_node *parent;

 parent = kernfs_find_and_get(kobj->sd, group_name);
 if (parent) {
  kernfs_remove_by_name(parent, link_name);
  kernfs_put(parent);
 }
}
