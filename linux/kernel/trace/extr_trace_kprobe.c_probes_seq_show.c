
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct dyn_event {int dummy; } ;


 int is_trace_kprobe (struct dyn_event*) ;
 int trace_kprobe_show (struct seq_file*,struct dyn_event*) ;

__attribute__((used)) static int probes_seq_show(struct seq_file *m, void *v)
{
 struct dyn_event *ev = v;

 if (!is_trace_kprobe(ev))
  return 0;

 return trace_kprobe_show(m, ev);
}
