
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {unsigned int cpu; int iter_flags; unsigned int ts; struct trace_entry* ent; struct trace_seq seq; struct trace_array* tr; } ;
struct trace_entry {int pid; } ;
struct trace_array {int trace_flags; } ;


 int TASK_COMM_LEN ;
 int TRACE_FILE_TIME_IN_NS ;
 int TRACE_ITER_IRQ_INFO ;
 int TRACE_ITER_RECORD_TGID ;
 int USEC_PER_SEC ;
 unsigned long do_div (unsigned long long,int ) ;
 unsigned long long ns2usecs (unsigned int) ;
 int trace_find_cmdline (int ,char*) ;
 unsigned int trace_find_tgid (int ) ;
 int trace_print_lat_fmt (struct trace_seq*,struct trace_entry*) ;
 int trace_seq_has_overflowed (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;

int trace_print_context(struct trace_iterator *iter)
{
 struct trace_array *tr = iter->tr;
 struct trace_seq *s = &iter->seq;
 struct trace_entry *entry = iter->ent;
 unsigned long long t;
 unsigned long secs, usec_rem;
 char comm[TASK_COMM_LEN];

 trace_find_cmdline(entry->pid, comm);

 trace_seq_printf(s, "%16s-%-5d ", comm, entry->pid);

 if (tr->trace_flags & TRACE_ITER_RECORD_TGID) {
  unsigned int tgid = trace_find_tgid(entry->pid);

  if (!tgid)
   trace_seq_printf(s, "(-----) ");
  else
   trace_seq_printf(s, "(%5d) ", tgid);
 }

 trace_seq_printf(s, "[%03d] ", iter->cpu);

 if (tr->trace_flags & TRACE_ITER_IRQ_INFO)
  trace_print_lat_fmt(s, entry);

 if (iter->iter_flags & TRACE_FILE_TIME_IN_NS) {
  t = ns2usecs(iter->ts);
  usec_rem = do_div(t, USEC_PER_SEC);
  secs = (unsigned long)t;
  trace_seq_printf(s, " %5lu.%06lu: ", secs, usec_rem);
 } else
  trace_seq_printf(s, " %12llu: ", iter->ts);

 return !trace_seq_has_overflowed(s);
}
