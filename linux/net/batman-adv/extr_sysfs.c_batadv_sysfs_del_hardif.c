
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int KOBJ_REMOVE ;
 int kobject_del (struct kobject*) ;
 int kobject_put (struct kobject*) ;
 int kobject_uevent (struct kobject*,int ) ;

void batadv_sysfs_del_hardif(struct kobject **hardif_obj)
{
 kobject_uevent(*hardif_obj, KOBJ_REMOVE);
 kobject_del(*hardif_obj);
 kobject_put(*hardif_obj);
 *hardif_obj = ((void*)0);
}
