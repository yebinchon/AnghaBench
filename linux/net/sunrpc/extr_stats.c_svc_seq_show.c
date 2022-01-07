
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_version {unsigned int vs_nproc; int * vs_count; } ;
struct svc_stat {scalar_t__ rpcbadclnt; scalar_t__ rpcbadauth; scalar_t__ rpcbadfmt; int rpccnt; int nettcpconn; int nettcpcnt; int netudpcnt; int netcnt; struct svc_program* program; } ;
struct svc_program {unsigned int pg_nvers; struct svc_version** pg_vers; } ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,unsigned int,...) ;
 int seq_putc (struct seq_file*,char) ;

void svc_seq_show(struct seq_file *seq, const struct svc_stat *statp)
{
 const struct svc_program *prog = statp->program;
 const struct svc_version *vers;
 unsigned int i, j;

 seq_printf(seq,
  "net %u %u %u %u\n",
   statp->netcnt,
   statp->netudpcnt,
   statp->nettcpcnt,
   statp->nettcpconn);
 seq_printf(seq,
  "rpc %u %u %u %u %u\n",
   statp->rpccnt,
   statp->rpcbadfmt+statp->rpcbadauth+statp->rpcbadclnt,
   statp->rpcbadfmt,
   statp->rpcbadauth,
   statp->rpcbadclnt);

 for (i = 0; i < prog->pg_nvers; i++) {
  vers = prog->pg_vers[i];
  if (!vers)
   continue;
  seq_printf(seq, "proc%d %u", i, vers->vs_nproc);
  for (j = 0; j < vers->vs_nproc; j++)
   seq_printf(seq, " %u", vers->vs_count[j]);
  seq_putc(seq, '\n');
 }
}
