
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {unsigned char maxpriority; int * tasks; } ;
struct rpc_task {int dummy; } ;


 int __rpc_list_enqueue_task (int *,struct rpc_task*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __rpc_add_wait_queue_priority(struct rpc_wait_queue *queue,
  struct rpc_task *task,
  unsigned char queue_priority)
{
 if (unlikely(queue_priority > queue->maxpriority))
  queue_priority = queue->maxpriority;
 __rpc_list_enqueue_task(&queue->tasks[queue_priority], task);
}
