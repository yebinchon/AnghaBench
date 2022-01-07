
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {long connect_time; int pending_u; int sending_u; int max_slots; int bklog_u; int req_u; int bad_xids; int recvs; int sends; int connect_count; int bind_count; } ;
struct rpc_xprt {TYPE_1__ stat; scalar_t__ last_used; } ;


 long HZ ;
 scalar_t__ jiffies ;
 int seq_printf (struct seq_file*,char*,int ,int ,long,long,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ xprt_connected (struct rpc_xprt*) ;

__attribute__((used)) static void xs_local_print_stats(struct rpc_xprt *xprt, struct seq_file *seq)
{
 long idle_time = 0;

 if (xprt_connected(xprt))
  idle_time = (long)(jiffies - xprt->last_used) / HZ;

 seq_printf(seq, "\txprt:\tlocal %lu %lu %lu %ld %lu %lu %lu "
   "%llu %llu %lu %llu %llu\n",
   xprt->stat.bind_count,
   xprt->stat.connect_count,
   xprt->stat.connect_time / HZ,
   idle_time,
   xprt->stat.sends,
   xprt->stat.recvs,
   xprt->stat.bad_xids,
   xprt->stat.req_u,
   xprt->stat.bklog_u,
   xprt->stat.max_slots,
   xprt->stat.sending_u,
   xprt->stat.pending_u);
}
