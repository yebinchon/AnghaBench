
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kernfs_node {int dummy; } ;


 int sysfs_do_create_link_sd (struct kernfs_node*,struct kobject*,char const*,int) ;

int sysfs_create_link_sd(struct kernfs_node *kn, struct kobject *target,
    const char *name)
{
 return sysfs_do_create_link_sd(kn, target, name, 1);
}
