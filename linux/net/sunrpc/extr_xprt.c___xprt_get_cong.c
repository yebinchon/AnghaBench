
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {int cong; int cwnd; } ;
struct rpc_rqst {int rq_cong; TYPE_1__* rq_task; } ;
struct TYPE_2__ {int tk_pid; } ;


 scalar_t__ RPCXPRT_CONGESTED (struct rpc_xprt*) ;
 scalar_t__ RPC_CWNDSCALE ;
 int dprintk (char*,int ,int ,int ) ;
 int xprt_set_congestion_window_wait (struct rpc_xprt*) ;

__attribute__((used)) static int
__xprt_get_cong(struct rpc_xprt *xprt, struct rpc_rqst *req)
{
 if (req->rq_cong)
  return 1;
 dprintk("RPC: %5u xprt_cwnd_limited cong = %lu cwnd = %lu\n",
   req->rq_task->tk_pid, xprt->cong, xprt->cwnd);
 if (RPCXPRT_CONGESTED(xprt)) {
  xprt_set_congestion_window_wait(xprt);
  return 0;
 }
 req->rq_cong = 1;
 xprt->cong += RPC_CWNDSCALE;
 return 1;
}
