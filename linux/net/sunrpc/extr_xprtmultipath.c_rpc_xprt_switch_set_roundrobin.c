
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_switch {int xps_iter_ops; } ;


 int * READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int *) ;
 int rpc_xprt_iter_roundrobin ;

void rpc_xprt_switch_set_roundrobin(struct rpc_xprt_switch *xps)
{
 if (READ_ONCE(xps->xps_iter_ops) != &rpc_xprt_iter_roundrobin)
  WRITE_ONCE(xps->xps_iter_ops, &rpc_xprt_iter_roundrobin);
}
