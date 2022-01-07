
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_seq {int dummy; } ;
struct fgraph_data {int cpu_data; } ;
typedef int pid_t ;
struct TYPE_2__ {int last_pid; } ;


 TYPE_1__* per_cpu_ptr (int ,int) ;
 int print_graph_cpu (struct trace_seq*,int) ;
 int print_graph_proc (struct trace_seq*,int) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static void
verif_pid(struct trace_seq *s, pid_t pid, int cpu, struct fgraph_data *data)
{
 pid_t prev_pid;
 pid_t *last_pid;

 if (!data)
  return;

 last_pid = &(per_cpu_ptr(data->cpu_data, cpu)->last_pid);

 if (*last_pid == pid)
  return;

 prev_pid = *last_pid;
 *last_pid = pid;

 if (prev_pid == -1)
  return;
 trace_seq_puts(s, " ------------------------------------------\n");
 print_graph_cpu(s, cpu);
 print_graph_proc(s, prev_pid);
 trace_seq_puts(s, " => ");
 print_graph_proc(s, pid);
 trace_seq_puts(s, "\n ------------------------------------------\n\n");
}
