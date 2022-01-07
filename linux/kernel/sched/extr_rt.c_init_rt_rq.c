
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int curr; int next; } ;
struct rt_prio_array {int bitmap; scalar_t__ queue; } ;
struct rt_rq {int rt_runtime_lock; scalar_t__ rt_runtime; scalar_t__ rt_throttled; scalar_t__ rt_time; scalar_t__ rt_queued; int pushable_tasks; scalar_t__ overloaded; scalar_t__ rt_nr_migratory; TYPE_1__ highest_prio; struct rt_prio_array active; } ;


 int INIT_LIST_HEAD (scalar_t__) ;
 int MAX_RT_PRIO ;
 int __clear_bit (int,int ) ;
 int __set_bit (int,int ) ;
 int plist_head_init (int *) ;
 int raw_spin_lock_init (int *) ;

void init_rt_rq(struct rt_rq *rt_rq)
{
 struct rt_prio_array *array;
 int i;

 array = &rt_rq->active;
 for (i = 0; i < MAX_RT_PRIO; i++) {
  INIT_LIST_HEAD(array->queue + i);
  __clear_bit(i, array->bitmap);
 }

 __set_bit(MAX_RT_PRIO, array->bitmap);
 rt_rq->rt_queued = 0;

 rt_rq->rt_time = 0;
 rt_rq->rt_throttled = 0;
 rt_rq->rt_runtime = 0;
 raw_spin_lock_init(&rt_rq->rt_runtime_lock);
}
