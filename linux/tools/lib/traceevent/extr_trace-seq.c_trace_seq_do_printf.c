
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int stdout ;
 int trace_seq_do_fprintf (struct trace_seq*,int ) ;

int trace_seq_do_printf(struct trace_seq *s)
{
 return trace_seq_do_fprintf(s, stdout);
}
