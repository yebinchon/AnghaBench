
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;


 int __rpc_list_dequeue_task (struct rpc_task*) ;

__attribute__((used)) static void __rpc_remove_wait_queue_priority(struct rpc_task *task)
{
 __rpc_list_dequeue_task(task);
}
