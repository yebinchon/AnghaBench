
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;


 int xprt_request_retransmit_after_disconnect (struct rpc_task*) ;

bool
xprt_request_need_retransmit(struct rpc_task *task)
{
 return xprt_request_retransmit_after_disconnect(task);
}
