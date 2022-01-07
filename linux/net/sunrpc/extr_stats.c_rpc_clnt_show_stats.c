
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct rpc_iostats {int dummy; } ;
struct rpc_clnt {unsigned int cl_maxproc; int cl_procinfo; struct rpc_clnt* cl_parent; int * cl_metrics; TYPE_1__* cl_program; int cl_vers; int cl_prog; } ;
struct TYPE_2__ {int name; } ;


 int RPC_IOSTATS_VERS ;
 int _add_rpc_iostats (struct rpc_iostats*,int *) ;
 int _print_rpc_iostats (struct seq_file*,struct rpc_iostats*,unsigned int,int ) ;
 int do_print_stats ;
 int rpc_clnt_iterate_for_each_xprt (struct rpc_clnt*,int ,struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,...) ;

void rpc_clnt_show_stats(struct seq_file *seq, struct rpc_clnt *clnt)
{
 unsigned int op, maxproc = clnt->cl_maxproc;

 if (!clnt->cl_metrics)
  return;

 seq_printf(seq, "\tRPC iostats version: %s  ", RPC_IOSTATS_VERS);
 seq_printf(seq, "p/v: %u/%u (%s)\n",
   clnt->cl_prog, clnt->cl_vers, clnt->cl_program->name);

 rpc_clnt_iterate_for_each_xprt(clnt, do_print_stats, seq);

 seq_printf(seq, "\tper-op statistics\n");
 for (op = 0; op < maxproc; op++) {
  struct rpc_iostats stats = {};
  struct rpc_clnt *next = clnt;
  do {
   _add_rpc_iostats(&stats, &next->cl_metrics[op]);
   if (next == next->cl_parent)
    break;
   next = next->cl_parent;
  } while (next);
  _print_rpc_iostats(seq, &stats, op, clnt->cl_procinfo);
 }
}
