
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_xprt {int dummy; } ;
struct rpc_task {TYPE_2__* tk_client; int tk_start; } ;
struct rpc_rqst {scalar_t__ rq_majortimeo; int rq_timeout; struct rpc_xprt* rq_xprt; } ;
struct TYPE_4__ {TYPE_1__* cl_timeout; } ;
struct TYPE_3__ {int to_initval; } ;


 unsigned long jiffies ;
 scalar_t__ likely (int) ;
 unsigned long xprt_abs_ktime_to_jiffies (int ) ;
 scalar_t__ xprt_calc_majortimeo (struct rpc_rqst*) ;
 scalar_t__ xprt_connected (struct rpc_xprt*) ;

__attribute__((used)) static void xprt_init_majortimeo(struct rpc_task *task, struct rpc_rqst *req)
{
 unsigned long time_init;
 struct rpc_xprt *xprt = req->rq_xprt;

 if (likely(xprt && xprt_connected(xprt)))
  time_init = jiffies;
 else
  time_init = xprt_abs_ktime_to_jiffies(task->tk_start);
 req->rq_timeout = task->tk_client->cl_timeout->to_initval;
 req->rq_majortimeo = time_init + xprt_calc_majortimeo(req);
}
