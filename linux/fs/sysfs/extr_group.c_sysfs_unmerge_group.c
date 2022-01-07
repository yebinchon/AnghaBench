
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int sd; } ;
struct kernfs_node {int dummy; } ;
struct attribute_group {struct attribute** attrs; int name; } ;
struct attribute {int name; } ;


 struct kernfs_node* kernfs_find_and_get (int ,int ) ;
 int kernfs_put (struct kernfs_node*) ;
 int kernfs_remove_by_name (struct kernfs_node*,int ) ;

void sysfs_unmerge_group(struct kobject *kobj,
         const struct attribute_group *grp)
{
 struct kernfs_node *parent;
 struct attribute *const *attr;

 parent = kernfs_find_and_get(kobj->sd, grp->name);
 if (parent) {
  for (attr = grp->attrs; *attr; ++attr)
   kernfs_remove_by_name(parent, (*attr)->name);
  kernfs_put(parent);
 }
}
