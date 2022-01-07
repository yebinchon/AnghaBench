
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kernfs_node {TYPE_1__* parent; } ;
struct TYPE_2__ {struct kobject* priv; } ;


 int kernfs_put (struct kernfs_node*) ;
 int kernfs_unbreak_active_protection (struct kernfs_node*) ;
 int kobject_put (struct kobject*) ;

void sysfs_unbreak_active_protection(struct kernfs_node *kn)
{
 struct kobject *kobj = kn->parent->priv;

 kernfs_unbreak_active_protection(kn);
 kernfs_put(kn);
 kobject_put(kobj);
}
