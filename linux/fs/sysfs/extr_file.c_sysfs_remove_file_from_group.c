
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;
struct attribute {int name; } ;


 struct kernfs_node* kernfs_find_and_get (struct kernfs_node*,char const*) ;
 int kernfs_get (struct kernfs_node*) ;
 int kernfs_put (struct kernfs_node*) ;
 int kernfs_remove_by_name (struct kernfs_node*,int ) ;

void sysfs_remove_file_from_group(struct kobject *kobj,
  const struct attribute *attr, const char *group)
{
 struct kernfs_node *parent;

 if (group) {
  parent = kernfs_find_and_get(kobj->sd, group);
 } else {
  parent = kobj->sd;
  kernfs_get(parent);
 }

 if (parent) {
  kernfs_remove_by_name(parent, attr->name);
  kernfs_put(parent);
 }
}
