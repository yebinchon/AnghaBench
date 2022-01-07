
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct rpc_wait_queue {int lock; } ;
struct rpc_task {int dummy; } ;


 struct rpc_task* __rpc_find_next_queued (struct rpc_wait_queue*) ;
 int dprintk (char*,struct rpc_wait_queue*,int ) ;
 int rpc_qname (struct rpc_wait_queue*) ;
 struct rpc_task* rpc_wake_up_task_on_wq_queue_action_locked (struct workqueue_struct*,struct rpc_wait_queue*,struct rpc_task*,int (*) (struct rpc_task*,void*),void*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct rpc_task *rpc_wake_up_first_on_wq(struct workqueue_struct *wq,
  struct rpc_wait_queue *queue,
  bool (*func)(struct rpc_task *, void *), void *data)
{
 struct rpc_task *task = ((void*)0);

 dprintk("RPC:       wake_up_first(%p \"%s\")\n",
   queue, rpc_qname(queue));
 spin_lock(&queue->lock);
 task = __rpc_find_next_queued(queue);
 if (task != ((void*)0))
  task = rpc_wake_up_task_on_wq_queue_action_locked(wq, queue,
    task, func, data);
 spin_unlock(&queue->lock);

 return task;
}
