
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {scalar_t__ tk_status; } ;
struct rpc_cb_add_xprt_calldata {int xprt; int xps; } ;


 int rpc_xprt_switch_add_xprt (int ,int ) ;

__attribute__((used)) static void rpc_cb_add_xprt_done(struct rpc_task *task, void *calldata)
{
 struct rpc_cb_add_xprt_calldata *data = calldata;

 if (task->tk_status == 0)
  rpc_xprt_switch_add_xprt(data->xps, data->xprt);
}
