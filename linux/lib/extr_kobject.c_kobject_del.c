
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int * parent; scalar_t__ state_in_sysfs; struct kernfs_node* sd; } ;
struct kobj_type {int default_groups; } ;
struct kernfs_node {int dummy; } ;


 struct kobj_type* get_ktype (struct kobject*) ;
 int kobj_kset_leave (struct kobject*) ;
 int kobject_put (int *) ;
 int sysfs_put (struct kernfs_node*) ;
 int sysfs_remove_dir (struct kobject*) ;
 int sysfs_remove_groups (struct kobject*,int ) ;

void kobject_del(struct kobject *kobj)
{
 struct kernfs_node *sd;
 const struct kobj_type *ktype;

 if (!kobj)
  return;

 sd = kobj->sd;
 ktype = get_ktype(kobj);

 if (ktype)
  sysfs_remove_groups(kobj, ktype->default_groups);

 sysfs_remove_dir(kobj);
 sysfs_put(sd);

 kobj->state_in_sysfs = 0;
 kobj_kset_leave(kobj);
 kobject_put(kobj->parent);
 kobj->parent = ((void*)0);
}
