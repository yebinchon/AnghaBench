
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int cpu; int ts; struct trace_array* tr; struct trace_entry* ent; struct fgraph_data* private; } ;
struct trace_entry {int pid; } ;
struct trace_array {int trace_flags; } ;
struct fgraph_data {int dummy; } ;


 int TRACE_GRAPH_PRINT_ABS_TIME ;
 int TRACE_GRAPH_PRINT_CPU ;
 int TRACE_GRAPH_PRINT_PROC ;
 int TRACE_GRAPH_PRINT_REL_TIME ;
 int TRACE_ITER_CONTEXT_INFO ;
 int TRACE_ITER_LATENCY_FMT ;
 int print_graph_abs_time (int ,struct trace_seq*) ;
 int print_graph_cpu (struct trace_seq*,int) ;
 int print_graph_irq (struct trace_iterator*,unsigned long,int,int,int ,int) ;
 int print_graph_lat_fmt (struct trace_seq*,struct trace_entry*) ;
 int print_graph_proc (struct trace_seq*,int ) ;
 int print_graph_rel_time (struct trace_iterator*,struct trace_seq*) ;
 int trace_seq_puts (struct trace_seq*,char*) ;
 int verif_pid (struct trace_seq*,int ,int,struct fgraph_data*) ;

__attribute__((used)) static void
print_graph_prologue(struct trace_iterator *iter, struct trace_seq *s,
       int type, unsigned long addr, u32 flags)
{
 struct fgraph_data *data = iter->private;
 struct trace_entry *ent = iter->ent;
 struct trace_array *tr = iter->tr;
 int cpu = iter->cpu;


 verif_pid(s, ent->pid, cpu, data);

 if (type)

  print_graph_irq(iter, addr, type, cpu, ent->pid, flags);

 if (!(tr->trace_flags & TRACE_ITER_CONTEXT_INFO))
  return;


 if (flags & TRACE_GRAPH_PRINT_ABS_TIME)
  print_graph_abs_time(iter->ts, s);


 if (flags & TRACE_GRAPH_PRINT_REL_TIME)
  print_graph_rel_time(iter, s);


 if (flags & TRACE_GRAPH_PRINT_CPU)
  print_graph_cpu(s, cpu);


 if (flags & TRACE_GRAPH_PRINT_PROC) {
  print_graph_proc(s, ent->pid);
  trace_seq_puts(s, " | ");
 }


 if (tr->trace_flags & TRACE_ITER_LATENCY_FMT)
  print_graph_lat_fmt(s, ent);

 return;
}
