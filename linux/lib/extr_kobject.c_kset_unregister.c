
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kset {int kobj; } ;


 int kobject_del (int *) ;
 int kobject_put (int *) ;

void kset_unregister(struct kset *k)
{
 if (!k)
  return;
 kobject_del(&k->kobj);
 kobject_put(&k->kobj);
}
