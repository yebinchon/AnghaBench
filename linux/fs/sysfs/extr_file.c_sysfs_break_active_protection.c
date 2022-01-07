
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int sd; } ;
struct kernfs_node {int dummy; } ;
struct attribute {int name; } ;


 int kernfs_break_active_protection (struct kernfs_node*) ;
 struct kernfs_node* kernfs_find_and_get (int ,int ) ;
 int kobject_get (struct kobject*) ;

struct kernfs_node *sysfs_break_active_protection(struct kobject *kobj,
        const struct attribute *attr)
{
 struct kernfs_node *kn;

 kobject_get(kobj);
 kn = kernfs_find_and_get(kobj->sd, attr->name);
 if (kn)
  kernfs_break_active_protection(kn);
 return kn;
}
