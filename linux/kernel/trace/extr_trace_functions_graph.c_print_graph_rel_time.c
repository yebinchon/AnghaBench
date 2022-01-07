
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_seq {int dummy; } ;
struct trace_iterator {unsigned long long ts; TYPE_1__* trace_buffer; } ;
struct TYPE_2__ {unsigned long long time_start; } ;


 int NSEC_PER_USEC ;
 int do_div (unsigned long long,int ) ;
 int trace_seq_printf (struct trace_seq*,char*,unsigned long long) ;

__attribute__((used)) static void
print_graph_rel_time(struct trace_iterator *iter, struct trace_seq *s)
{
 unsigned long long usecs;

 usecs = iter->ts - iter->trace_buffer->time_start;
 do_div(usecs, NSEC_PER_USEC);

 trace_seq_printf(s, "%9llu us |  ", usecs);
}
