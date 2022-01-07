
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute {int dummy; } ;


 int sysfs_create_file (struct kobject*,struct attribute const* const) ;
 int sysfs_remove_file (struct kobject*,struct attribute const* const) ;

int sysfs_create_files(struct kobject *kobj, const struct attribute * const *ptr)
{
 int err = 0;
 int i;

 for (i = 0; ptr[i] && !err; i++)
  err = sysfs_create_file(kobj, ptr[i]);
 if (err)
  while (--i >= 0)
   sysfs_remove_file(kobj, ptr[i]);
 return err;
}
