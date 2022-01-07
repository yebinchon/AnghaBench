
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pf; int rcu_head; } ;
struct TYPE_6__ {int locks_before; int locks_after; int lock_entry; } ;
struct TYPE_5__ {int zapped; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ SYSTEM_SCHEDULING ;
 TYPE_3__ delayed_free ;
 int free_lock_classes ;
 int init_rcu_head (int *) ;
 scalar_t__ likely (int) ;
 int list_add_tail (int *,int *) ;
 TYPE_2__* lock_classes ;
 scalar_t__ system_state ;

__attribute__((used)) static void init_data_structures_once(void)
{
 static bool ds_initialized, rcu_head_initialized;
 int i;

 if (likely(rcu_head_initialized))
  return;

 if (system_state >= SYSTEM_SCHEDULING) {
  init_rcu_head(&delayed_free.rcu_head);
  rcu_head_initialized = 1;
 }

 if (ds_initialized)
  return;

 ds_initialized = 1;

 INIT_LIST_HEAD(&delayed_free.pf[0].zapped);
 INIT_LIST_HEAD(&delayed_free.pf[1].zapped);

 for (i = 0; i < ARRAY_SIZE(lock_classes); i++) {
  list_add_tail(&lock_classes[i].lock_entry, &free_lock_classes);
  INIT_LIST_HEAD(&lock_classes[i].locks_after);
  INIT_LIST_HEAD(&lock_classes[i].locks_before);
 }
}
