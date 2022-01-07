
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct rpc_procinfo {int dummy; } ;
struct rpc_iostats {int om_error_status; int om_execute; int om_rtt; int om_queue; int om_bytes_recv; int om_bytes_sent; int om_timeouts; int om_ntrans; int om_ops; } ;


 int _print_name (struct seq_file*,int,struct rpc_procinfo const*) ;
 int ktime_to_ms (int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void _print_rpc_iostats(struct seq_file *seq, struct rpc_iostats *stats,
          int op, const struct rpc_procinfo *procs)
{
 _print_name(seq, op, procs);
 seq_printf(seq, "%lu %lu %lu %llu %llu %llu %llu %llu %lu\n",
     stats->om_ops,
     stats->om_ntrans,
     stats->om_timeouts,
     stats->om_bytes_sent,
     stats->om_bytes_recv,
     ktime_to_ms(stats->om_queue),
     ktime_to_ms(stats->om_rtt),
     ktime_to_ms(stats->om_execute),
     stats->om_error_status);
}
