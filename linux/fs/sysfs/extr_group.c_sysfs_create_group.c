
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute_group {int dummy; } ;


 int internal_create_group (struct kobject*,int ,struct attribute_group const*) ;

int sysfs_create_group(struct kobject *kobj,
         const struct attribute_group *grp)
{
 return internal_create_group(kobj, 0, grp);
}
