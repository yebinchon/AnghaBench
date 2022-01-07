
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct rpc_procinfo {unsigned int p_name; } ;


 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void _print_name(struct seq_file *seq, unsigned int op,
   const struct rpc_procinfo *procs)
{
 if (procs[op].p_name)
  seq_printf(seq, "\t%12s: ", procs[op].p_name);
 else if (op == 0)
  seq_printf(seq, "\t        NULL: ");
 else
  seq_printf(seq, "\t%12u: ", op);
}
