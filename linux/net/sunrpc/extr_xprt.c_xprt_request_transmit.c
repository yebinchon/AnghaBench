
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ qlen; } ;
struct TYPE_13__ {scalar_t__ qlen; } ;
struct TYPE_12__ {int pending_u; int sending_u; int bklog_u; scalar_t__ recvs; scalar_t__ sends; int req_u; } ;
struct TYPE_11__ {scalar_t__ qlen; } ;
struct rpc_xprt {unsigned int connect_cookie; TYPE_7__ sending; int transport_lock; TYPE_6__ pending; TYPE_5__ stat; TYPE_4__ backlog; TYPE_1__* ops; } ;
struct rpc_task {int tk_flags; TYPE_3__* tk_client; } ;
struct rpc_rqst {unsigned int rq_connect_cookie; int rq_ntrans; int rq_bytes_sent; struct rpc_task* rq_task; struct rpc_xprt* rq_xprt; } ;
struct TYPE_10__ {TYPE_2__* cl_stats; } ;
struct TYPE_9__ {int rpcretrans; } ;
struct TYPE_8__ {int (* send_request ) (struct rpc_rqst*) ;} ;


 int EBADMSG ;
 int ERESTARTSYS ;
 scalar_t__ RPC_SIGNALLED (struct rpc_task*) ;
 int RPC_TASK_SENT ;
 int RPC_WAS_SENT (struct rpc_task*) ;
 int rpc_wake_up_queued_task_set_status (TYPE_7__*,struct rpc_task*,int) ;
 scalar_t__ rpcauth_xmit_need_reencode (struct rpc_task*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rpc_rqst*) ;
 int trace_xprt_transmit (struct rpc_rqst*,int) ;
 int xprt_inject_disconnect (struct rpc_xprt*) ;
 scalar_t__ xprt_request_data_received (struct rpc_task*) ;
 int xprt_request_dequeue_transmit (struct rpc_task*) ;

__attribute__((used)) static int
xprt_request_transmit(struct rpc_rqst *req, struct rpc_task *snd_task)
{
 struct rpc_xprt *xprt = req->rq_xprt;
 struct rpc_task *task = req->rq_task;
 unsigned int connect_cookie;
 int is_retrans = RPC_WAS_SENT(task);
 int status;

 if (!req->rq_bytes_sent) {
  if (xprt_request_data_received(task)) {
   status = 0;
   goto out_dequeue;
  }

  if (rpcauth_xmit_need_reencode(task)) {
   status = -EBADMSG;
   goto out_dequeue;
  }
  if (RPC_SIGNALLED(task)) {
   status = -ERESTARTSYS;
   goto out_dequeue;
  }
 }






 req->rq_ntrans++;

 connect_cookie = xprt->connect_cookie;
 status = xprt->ops->send_request(req);
 if (status != 0) {
  req->rq_ntrans--;
  trace_xprt_transmit(req, status);
  return status;
 }

 if (is_retrans)
  task->tk_client->cl_stats->rpcretrans++;

 xprt_inject_disconnect(xprt);

 task->tk_flags |= RPC_TASK_SENT;
 spin_lock(&xprt->transport_lock);

 xprt->stat.sends++;
 xprt->stat.req_u += xprt->stat.sends - xprt->stat.recvs;
 xprt->stat.bklog_u += xprt->backlog.qlen;
 xprt->stat.sending_u += xprt->sending.qlen;
 xprt->stat.pending_u += xprt->pending.qlen;
 spin_unlock(&xprt->transport_lock);

 req->rq_connect_cookie = connect_cookie;
out_dequeue:
 trace_xprt_transmit(req, status);
 xprt_request_dequeue_transmit(task);
 rpc_wake_up_queued_task_set_status(&xprt->sending, task, status);
 return status;
}
