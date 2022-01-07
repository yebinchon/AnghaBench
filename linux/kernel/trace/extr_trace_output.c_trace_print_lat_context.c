
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int ent_size; int cpu; int idx; int ts; struct trace_entry* ent; struct trace_seq seq; struct trace_array* tr; } ;
struct trace_entry {int preempt_count; int flags; int pid; } ;
struct trace_array {unsigned long trace_flags; } ;


 int TASK_COMM_LEN ;
 unsigned long TRACE_ITER_VERBOSE ;
 int lat_print_generic (struct trace_seq*,struct trace_entry*,int ) ;
 int lat_print_timestamp (struct trace_iterator*,int ) ;
 int trace_find_cmdline (int ,char*) ;
 struct trace_entry* trace_find_next_entry (struct trace_iterator*,int *,int *) ;
 int trace_seq_has_overflowed (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,char*,int ,int ,int ,int ,int ) ;

int trace_print_lat_context(struct trace_iterator *iter)
{
 struct trace_array *tr = iter->tr;

 int ent_size = iter->ent_size;
 struct trace_seq *s = &iter->seq;
 u64 next_ts;
 struct trace_entry *entry = iter->ent,
      *next_entry = trace_find_next_entry(iter, ((void*)0),
              &next_ts);
 unsigned long verbose = (tr->trace_flags & TRACE_ITER_VERBOSE);


 iter->ent_size = ent_size;

 if (!next_entry)
  next_ts = iter->ts;

 if (verbose) {
  char comm[TASK_COMM_LEN];

  trace_find_cmdline(entry->pid, comm);

  trace_seq_printf(
   s, "%16s %5d %3d %d %08x %08lx ",
   comm, entry->pid, iter->cpu, entry->flags,
   entry->preempt_count, iter->idx);
 } else {
  lat_print_generic(s, entry, iter->cpu);
 }

 lat_print_timestamp(iter, next_ts);

 return !trace_seq_has_overflowed(s);
}
