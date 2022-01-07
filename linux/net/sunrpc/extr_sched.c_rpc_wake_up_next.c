
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int dummy; } ;
struct rpc_task {int dummy; } ;


 struct rpc_task* rpc_wake_up_first (struct rpc_wait_queue*,int ,int *) ;
 int rpc_wake_up_next_func ;

struct rpc_task *rpc_wake_up_next(struct rpc_wait_queue *queue)
{
 return rpc_wake_up_first(queue, rpc_wake_up_next_func, ((void*)0));
}
