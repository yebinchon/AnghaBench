
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swait_queue_head {int task_list; } ;
struct swait_queue {int task_list; int task; } ;


 int current ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static void __prepare_to_swait(struct swait_queue_head *q, struct swait_queue *wait)
{
 wait->task = current;
 if (list_empty(&wait->task_list))
  list_add_tail(&wait->task_list, &q->task_list);
}
