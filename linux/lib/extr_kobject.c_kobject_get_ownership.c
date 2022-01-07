
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {TYPE_1__* ktype; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_2__ {int (* get_ownership ) (struct kobject*,int *,int *) ;} ;


 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int stub1 (struct kobject*,int *,int *) ;

void kobject_get_ownership(struct kobject *kobj, kuid_t *uid, kgid_t *gid)
{
 *uid = GLOBAL_ROOT_UID;
 *gid = GLOBAL_ROOT_GID;

 if (kobj->ktype->get_ownership)
  kobj->ktype->get_ownership(kobj, uid, gid);
}
