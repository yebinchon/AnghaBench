
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swait_queue_head {int dummy; } ;
struct swait_queue {int task_list; } ;


 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

void __finish_swait(struct swait_queue_head *q, struct swait_queue *wait)
{
 __set_current_state(TASK_RUNNING);
 if (!list_empty(&wait->task_list))
  list_del_init(&wait->task_list);
}
