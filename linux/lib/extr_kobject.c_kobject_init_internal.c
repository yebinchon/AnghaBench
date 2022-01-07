
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int state_initialized; scalar_t__ state_remove_uevent_sent; scalar_t__ state_add_uevent_sent; scalar_t__ state_in_sysfs; int entry; int kref; } ;


 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;

__attribute__((used)) static void kobject_init_internal(struct kobject *kobj)
{
 if (!kobj)
  return;
 kref_init(&kobj->kref);
 INIT_LIST_HEAD(&kobj->entry);
 kobj->state_in_sysfs = 0;
 kobj->state_add_uevent_sent = 0;
 kobj->state_remove_uevent_sent = 0;
 kobj->state_initialized = 1;
}
