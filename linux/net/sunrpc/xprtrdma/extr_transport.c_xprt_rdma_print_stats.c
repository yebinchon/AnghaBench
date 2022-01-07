
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {int reply_waits_for_send; int empty_sendctx_q; int local_inv_needed; int mrs_allocated; int mrs_orphaned; int mrs_recycled; int nomsg_call_count; int bad_reply_count; int failed_marshal_count; int hardway_register_count; int fixup_copy_count; int pullup_copy_count; int total_rdma_reply; int total_rdma_request; int reply_chunk_count; int write_chunk_count; int read_chunk_count; } ;
struct rpcrdma_xprt {TYPE_2__ rx_stats; } ;
struct TYPE_3__ {long connect_time; int bklog_u; int req_u; int bad_xids; int recvs; int sends; int connect_count; int bind_count; } ;
struct rpc_xprt {TYPE_1__ stat; scalar_t__ last_used; } ;


 long HZ ;
 scalar_t__ jiffies ;
 struct rpcrdma_xprt* rpcx_to_rdmax (struct rpc_xprt*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,long,long,int ,...) ;
 int seq_puts (struct seq_file*,char*) ;
 scalar_t__ xprt_connected (struct rpc_xprt*) ;

void xprt_rdma_print_stats(struct rpc_xprt *xprt, struct seq_file *seq)
{
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(xprt);
 long idle_time = 0;

 if (xprt_connected(xprt))
  idle_time = (long)(jiffies - xprt->last_used) / HZ;

 seq_puts(seq, "\txprt:\trdma ");
 seq_printf(seq, "%u %lu %lu %lu %ld %lu %lu %lu %llu %llu ",
     0,
     xprt->stat.bind_count,
     xprt->stat.connect_count,
     xprt->stat.connect_time / HZ,
     idle_time,
     xprt->stat.sends,
     xprt->stat.recvs,
     xprt->stat.bad_xids,
     xprt->stat.req_u,
     xprt->stat.bklog_u);
 seq_printf(seq, "%lu %lu %lu %llu %llu %llu %llu %lu %lu %lu %lu ",
     r_xprt->rx_stats.read_chunk_count,
     r_xprt->rx_stats.write_chunk_count,
     r_xprt->rx_stats.reply_chunk_count,
     r_xprt->rx_stats.total_rdma_request,
     r_xprt->rx_stats.total_rdma_reply,
     r_xprt->rx_stats.pullup_copy_count,
     r_xprt->rx_stats.fixup_copy_count,
     r_xprt->rx_stats.hardway_register_count,
     r_xprt->rx_stats.failed_marshal_count,
     r_xprt->rx_stats.bad_reply_count,
     r_xprt->rx_stats.nomsg_call_count);
 seq_printf(seq, "%lu %lu %lu %lu %lu %lu\n",
     r_xprt->rx_stats.mrs_recycled,
     r_xprt->rx_stats.mrs_orphaned,
     r_xprt->rx_stats.mrs_allocated,
     r_xprt->rx_stats.local_inv_needed,
     r_xprt->rx_stats.empty_sendctx_q,
     r_xprt->rx_stats.reply_waits_for_send);
}
