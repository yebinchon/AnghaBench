
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcbind_args {scalar_t__ r_port; int r_status; struct rpc_xprt* r_xprt; } ;
struct rpc_xprt {TYPE_1__* ops; int bind_index; } ;
struct rpc_task {int tk_status; int tk_pid; } ;
struct TYPE_2__ {int (* set_port ) (struct rpc_xprt*,scalar_t__) ;} ;


 int EACCES ;
 int EIO ;
 int EPROTONOSUPPORT ;
 int dprintk (char*,int ,int,scalar_t__) ;
 int stub1 (struct rpc_xprt*,scalar_t__) ;
 int stub2 (struct rpc_xprt*,scalar_t__) ;
 int stub3 (struct rpc_xprt*,scalar_t__) ;
 int xprt_set_bound (struct rpc_xprt*) ;

__attribute__((used)) static void rpcb_getport_done(struct rpc_task *child, void *data)
{
 struct rpcbind_args *map = data;
 struct rpc_xprt *xprt = map->r_xprt;
 int status = child->tk_status;


 if (status == -EIO)
  status = -EPROTONOSUPPORT;


 if (status == -EPROTONOSUPPORT)
  xprt->bind_index++;

 if (status < 0) {

  xprt->ops->set_port(xprt, 0);
 } else if (map->r_port == 0) {

  xprt->ops->set_port(xprt, 0);
  status = -EACCES;
 } else {

  xprt->ops->set_port(xprt, map->r_port);
  xprt_set_bound(xprt);
  status = 0;
 }

 dprintk("RPC: %5u rpcb_getport_done(status %d, port %u)\n",
   child->tk_pid, status, map->r_port);

 map->r_status = status;
}
