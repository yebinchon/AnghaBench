
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int max_bytes_for_cpu ;
 int trace_seq_printf (struct trace_seq*,char*,int ,int) ;

__attribute__((used)) static void print_graph_cpu(struct trace_seq *s, int cpu)
{





 trace_seq_printf(s, " %*d) ", max_bytes_for_cpu, cpu);
}
