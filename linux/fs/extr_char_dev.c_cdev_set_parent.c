
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int state_initialized; } ;
struct TYPE_2__ {struct kobject* parent; } ;
struct cdev {TYPE_1__ kobj; } ;


 int WARN_ON (int) ;

void cdev_set_parent(struct cdev *p, struct kobject *kobj)
{
 WARN_ON(!kobj->state_initialized);
 p->kobj.parent = kobj;
}
