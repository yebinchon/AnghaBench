
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_kprobe {int nhit; struct trace_kprobe* symbol; int tp; } ;


 int free_percpu (int ) ;
 int kfree (struct trace_kprobe*) ;
 int trace_probe_cleanup (int *) ;

__attribute__((used)) static void free_trace_kprobe(struct trace_kprobe *tk)
{
 if (tk) {
  trace_probe_cleanup(&tk->tp);
  kfree(tk->symbol);
  free_percpu(tk->nhit);
  kfree(tk);
 }
}
