
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int dummy; } ;
struct rpc_task {int dummy; } ;


 struct rpc_task* rpc_wake_up_first_on_wq (int ,struct rpc_wait_queue*,int (*) (struct rpc_task*,void*),void*) ;
 int rpciod_workqueue ;

struct rpc_task *rpc_wake_up_first(struct rpc_wait_queue *queue,
  bool (*func)(struct rpc_task *, void *), void *data)
{
 return rpc_wake_up_first_on_wq(rpciod_workqueue, queue, func, data);
}
