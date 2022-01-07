
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kset_uevent_ops {int dummy; } ;
struct TYPE_2__ {int * kset; int * ktype; struct kobject* parent; } ;
struct kset {TYPE_1__ kobj; struct kset_uevent_ops const* uevent_ops; } ;
struct kobject {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct kset*) ;
 int kobject_set_name (TYPE_1__*,char*,char const*) ;
 int kset_ktype ;
 struct kset* kzalloc (int,int ) ;

__attribute__((used)) static struct kset *kset_create(const char *name,
    const struct kset_uevent_ops *uevent_ops,
    struct kobject *parent_kobj)
{
 struct kset *kset;
 int retval;

 kset = kzalloc(sizeof(*kset), GFP_KERNEL);
 if (!kset)
  return ((void*)0);
 retval = kobject_set_name(&kset->kobj, "%s", name);
 if (retval) {
  kfree(kset);
  return ((void*)0);
 }
 kset->uevent_ops = uevent_ops;
 kset->kobj.parent = parent_kobj;






 kset->kobj.ktype = &kset_ktype;
 kset->kobj.kset = ((void*)0);

 return kset;
}
