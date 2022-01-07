
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {TYPE_1__* kset; int entry; } ;
struct TYPE_2__ {int list_lock; } ;


 int kset_put (TYPE_1__*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void kobj_kset_leave(struct kobject *kobj)
{
 if (!kobj->kset)
  return;

 spin_lock(&kobj->kset->list_lock);
 list_del_init(&kobj->entry);
 spin_unlock(&kobj->kset->list_lock);
 kset_put(kobj->kset);
}
