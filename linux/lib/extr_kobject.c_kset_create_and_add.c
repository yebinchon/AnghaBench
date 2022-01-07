
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kset_uevent_ops {int dummy; } ;
struct kset {int dummy; } ;
struct kobject {int dummy; } ;


 int kfree (struct kset*) ;
 struct kset* kset_create (char const*,struct kset_uevent_ops const*,struct kobject*) ;
 int kset_register (struct kset*) ;

struct kset *kset_create_and_add(const char *name,
     const struct kset_uevent_ops *uevent_ops,
     struct kobject *parent_kobj)
{
 struct kset *kset;
 int error;

 kset = kset_create(name, uevent_ops, parent_kobj);
 if (!kset)
  return ((void*)0);
 error = kset_register(kset);
 if (error) {
  kfree(kset);
  return ((void*)0);
 }
 return kset;
}
