
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute_group {int dummy; } ;


 int sysfs_remove_group (struct kobject*,struct attribute_group const*) ;

void sysfs_remove_groups(struct kobject *kobj,
    const struct attribute_group **groups)
{
 int i;

 if (!groups)
  return;
 for (i = 0; groups[i]; i++)
  sysfs_remove_group(kobj, groups[i]);
}
