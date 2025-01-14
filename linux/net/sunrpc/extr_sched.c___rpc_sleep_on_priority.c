
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int dummy; } ;
struct rpc_task {int tk_pid; } ;


 int __rpc_add_wait_queue (struct rpc_wait_queue*,struct rpc_task*,unsigned char) ;
 int dprintk (char*,int ,int ,int ) ;
 int jiffies ;
 int rpc_qname (struct rpc_wait_queue*) ;
 int trace_rpc_task_sleep (struct rpc_task*,struct rpc_wait_queue*) ;

__attribute__((used)) static void __rpc_sleep_on_priority(struct rpc_wait_queue *q,
  struct rpc_task *task,
  unsigned char queue_priority)
{
 dprintk("RPC: %5u sleep_on(queue \"%s\" time %lu)\n",
   task->tk_pid, rpc_qname(q), jiffies);

 trace_rpc_task_sleep(task, q);

 __rpc_add_wait_queue(q, task, queue_priority);

}
