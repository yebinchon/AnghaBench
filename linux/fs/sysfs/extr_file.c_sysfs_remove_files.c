
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute {int dummy; } ;


 int sysfs_remove_file (struct kobject*,struct attribute const* const) ;

void sysfs_remove_files(struct kobject *kobj, const struct attribute * const *ptr)
{
 int i;

 for (i = 0; ptr[i]; i++)
  sysfs_remove_file(kobj, ptr[i]);
}
