
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {scalar_t__ parent; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int kobject_get_ownership (scalar_t__,int *,int *) ;

__attribute__((used)) static void kset_get_ownership(struct kobject *kobj, kuid_t *uid, kgid_t *gid)
{
 if (kobj->parent)
  kobject_get_ownership(kobj->parent, uid, gid);
}
