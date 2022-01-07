
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;


 int EFAULT ;
 int sysfs_do_create_link_sd (struct kernfs_node*,struct kobject*,char const*,int) ;
 struct kernfs_node* sysfs_root_kn ;

__attribute__((used)) static int sysfs_do_create_link(struct kobject *kobj, struct kobject *target,
    const char *name, int warn)
{
 struct kernfs_node *parent = ((void*)0);

 if (!kobj)
  parent = sysfs_root_kn;
 else
  parent = kobj->sd;

 if (!parent)
  return -EFAULT;

 return sysfs_do_create_link_sd(parent, target, name, warn);
}
