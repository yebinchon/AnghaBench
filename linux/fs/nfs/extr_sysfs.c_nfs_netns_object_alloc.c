
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kset {int dummy; } ;
struct kobject {struct kset* kset; } ;


 int GFP_KERNEL ;
 scalar_t__ kobject_init_and_add (struct kobject*,int *,struct kobject*,char*,char const*) ;
 int kobject_put (struct kobject*) ;
 struct kobject* kzalloc (int,int ) ;
 int nfs_netns_object_type ;

__attribute__((used)) static struct kobject *nfs_netns_object_alloc(const char *name,
  struct kset *kset, struct kobject *parent)
{
 struct kobject *kobj;

 kobj = kzalloc(sizeof(*kobj), GFP_KERNEL);
 if (kobj) {
  kobj->kset = kset;
  if (kobject_init_and_add(kobj, &nfs_netns_object_type,
     parent, "%s", name) == 0)
   return kobj;
  kobject_put(kobj);
 }
 return ((void*)0);
}
