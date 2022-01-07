
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kset {int list_lock; int list; int kobj; } ;


 int INIT_LIST_HEAD (int *) ;
 int kobject_init_internal (int *) ;
 int spin_lock_init (int *) ;

void kset_init(struct kset *k)
{
 kobject_init_internal(&k->kobj);
 INIT_LIST_HEAD(&k->list);
 spin_lock_init(&k->list_lock);
}
