
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_probe {int nr_args; scalar_t__ event; int * args; } ;


 int trace_probe_unlink (struct trace_probe*) ;
 int traceprobe_free_probe_arg (int *) ;

void trace_probe_cleanup(struct trace_probe *tp)
{
 int i;

 for (i = 0; i < tp->nr_args; i++)
  traceprobe_free_probe_arg(&tp->args[i]);

 if (tp->event)
  trace_probe_unlink(tp);
}
