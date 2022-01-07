
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct rpc_stat* private; } ;
struct rpc_version {unsigned int nrprocs; int * counts; int number; } ;
struct rpc_stat {int rpcauthrefresh; int rpcretrans; int rpccnt; int nettcpconn; int nettcpcnt; int netudpcnt; int netcnt; struct rpc_program* program; } ;
struct rpc_program {unsigned int nrvers; struct rpc_version** version; } ;


 int seq_printf (struct seq_file*,char*,int ,...) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int rpc_proc_show(struct seq_file *seq, void *v) {
 const struct rpc_stat *statp = seq->private;
 const struct rpc_program *prog = statp->program;
 unsigned int i, j;

 seq_printf(seq,
  "net %u %u %u %u\n",
   statp->netcnt,
   statp->netudpcnt,
   statp->nettcpcnt,
   statp->nettcpconn);
 seq_printf(seq,
  "rpc %u %u %u\n",
   statp->rpccnt,
   statp->rpcretrans,
   statp->rpcauthrefresh);

 for (i = 0; i < prog->nrvers; i++) {
  const struct rpc_version *vers = prog->version[i];
  if (!vers)
   continue;
  seq_printf(seq, "proc%u %u",
     vers->number, vers->nrprocs);
  for (j = 0; j < vers->nrprocs; j++)
   seq_printf(seq, " %u", vers->counts[j]);
  seq_putc(seq, '\n');
 }
 return 0;
}
