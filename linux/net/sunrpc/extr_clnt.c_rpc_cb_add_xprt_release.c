
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cb_add_xprt_calldata {int xps; int xprt; } ;


 int kfree (struct rpc_cb_add_xprt_calldata*) ;
 int xprt_put (int ) ;
 int xprt_switch_put (int ) ;

__attribute__((used)) static void rpc_cb_add_xprt_release(void *calldata)
{
 struct rpc_cb_add_xprt_calldata *data = calldata;

 xprt_put(data->xprt);
 xprt_switch_put(data->xps);
 kfree(data);
}
