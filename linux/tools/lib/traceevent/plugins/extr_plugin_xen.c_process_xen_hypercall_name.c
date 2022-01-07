
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int trace_seq_printf (struct trace_seq*,char*,int ) ;
 int xen_hypercall_name (unsigned int) ;

unsigned long long process_xen_hypercall_name(struct trace_seq *s,
           unsigned long long *args)
{
 unsigned int op = args[0];

 trace_seq_printf(s, "%s", xen_hypercall_name(op));
 return 0;
}
