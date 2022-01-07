
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute_group {int dummy; } ;


 int kobject_put (struct kobject*) ;
 int sysfs_remove_group (struct kobject*,struct attribute_group const*) ;

__attribute__((used)) static void free_widget_node(struct kobject *kobj,
        const struct attribute_group *group)
{
 if (kobj) {
  sysfs_remove_group(kobj, group);
  kobject_put(kobj);
 }
}
