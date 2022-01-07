
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {scalar_t__ on_list; int run_list; } ;
struct rt_prio_array {int bitmap; scalar_t__ queue; } ;


 int __clear_bit (scalar_t__,int ) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (scalar_t__) ;
 scalar_t__ rt_se_prio (struct sched_rt_entity*) ;

__attribute__((used)) static void __delist_rt_entity(struct sched_rt_entity *rt_se, struct rt_prio_array *array)
{
 list_del_init(&rt_se->run_list);

 if (list_empty(array->queue + rt_se_prio(rt_se)))
  __clear_bit(rt_se_prio(rt_se), array->bitmap);

 rt_se->on_list = 0;
}
