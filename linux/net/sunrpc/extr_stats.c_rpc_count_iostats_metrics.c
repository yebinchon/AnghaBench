
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {scalar_t__ tk_status; int tk_start; scalar_t__ tk_timeouts; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {scalar_t__ rq_rtt; int rq_task; scalar_t__ rq_xtime; scalar_t__ rq_reply_bytes_recvd; scalar_t__ rq_xmit_bytes_sent; int rq_ntrans; } ;
struct rpc_iostats {int om_lock; int om_error_status; void* om_execute; void* om_rtt; void* om_queue; int om_bytes_recv; int om_bytes_sent; int om_timeouts; int om_ntrans; int om_ops; } ;
typedef scalar_t__ ktime_t ;


 void* ktime_add (void*,scalar_t__) ;
 scalar_t__ ktime_get () ;
 scalar_t__ ktime_sub (scalar_t__,int ) ;
 scalar_t__ ktime_to_ns (scalar_t__) ;
 scalar_t__ max (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_rpc_stats_latency (int ,scalar_t__,scalar_t__,scalar_t__) ;

void rpc_count_iostats_metrics(const struct rpc_task *task,
          struct rpc_iostats *op_metrics)
{
 struct rpc_rqst *req = task->tk_rqstp;
 ktime_t backlog, execute, now;

 if (!op_metrics || !req)
  return;

 now = ktime_get();
 spin_lock(&op_metrics->om_lock);

 op_metrics->om_ops++;

 op_metrics->om_ntrans += max(req->rq_ntrans, 1);
 op_metrics->om_timeouts += task->tk_timeouts;

 op_metrics->om_bytes_sent += req->rq_xmit_bytes_sent;
 op_metrics->om_bytes_recv += req->rq_reply_bytes_recvd;

 backlog = 0;
 if (ktime_to_ns(req->rq_xtime)) {
  backlog = ktime_sub(req->rq_xtime, task->tk_start);
  op_metrics->om_queue = ktime_add(op_metrics->om_queue, backlog);
 }

 op_metrics->om_rtt = ktime_add(op_metrics->om_rtt, req->rq_rtt);

 execute = ktime_sub(now, task->tk_start);
 op_metrics->om_execute = ktime_add(op_metrics->om_execute, execute);
 if (task->tk_status < 0)
  op_metrics->om_error_status++;

 spin_unlock(&op_metrics->om_lock);

 trace_rpc_stats_latency(req->rq_task, backlog, req->rq_rtt, execute);
}
