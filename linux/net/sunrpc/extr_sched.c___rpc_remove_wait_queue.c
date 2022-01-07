
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_wait_queue {int qlen; } ;
struct TYPE_3__ {int list; } ;
struct TYPE_4__ {TYPE_1__ tk_wait; } ;
struct rpc_task {int tk_pid; TYPE_2__ u; } ;


 scalar_t__ RPC_IS_PRIORITY (struct rpc_wait_queue*) ;
 int __rpc_disable_timer (struct rpc_wait_queue*,struct rpc_task*) ;
 int __rpc_remove_wait_queue_priority (struct rpc_task*) ;
 int dprintk (char*,int ,struct rpc_wait_queue*,int ) ;
 int list_del (int *) ;
 int rpc_qname (struct rpc_wait_queue*) ;

__attribute__((used)) static void __rpc_remove_wait_queue(struct rpc_wait_queue *queue, struct rpc_task *task)
{
 __rpc_disable_timer(queue, task);
 if (RPC_IS_PRIORITY(queue))
  __rpc_remove_wait_queue_priority(task);
 else
  list_del(&task->u.tk_wait.list);
 queue->qlen--;
 dprintk("RPC: %5u removed from queue %p \"%s\"\n",
   task->tk_pid, queue, rpc_qname(queue));
}
