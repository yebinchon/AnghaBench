
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct trace_seq {int dummy; } ;


 int NSEC_PER_SEC ;
 unsigned long do_div (scalar_t__,int ) ;
 int trace_seq_printf (struct trace_seq*,char*,unsigned long,unsigned long) ;

__attribute__((used)) static void print_graph_abs_time(u64 t, struct trace_seq *s)
{
 unsigned long usecs_rem;

 usecs_rem = do_div(t, NSEC_PER_SEC);
 usecs_rem /= 1000;

 trace_seq_printf(s, "%5lu.%06lu |  ",
    (unsigned long)t, usecs_rem);
}
