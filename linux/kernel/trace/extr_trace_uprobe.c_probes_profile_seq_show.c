
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_uprobe {int nhit; int tp; int filename; } ;
struct seq_file {int dummy; } ;
struct dyn_event {int dummy; } ;


 int is_trace_uprobe (struct dyn_event*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;
 struct trace_uprobe* to_trace_uprobe (struct dyn_event*) ;
 int trace_probe_name (int *) ;

__attribute__((used)) static int probes_profile_seq_show(struct seq_file *m, void *v)
{
 struct dyn_event *ev = v;
 struct trace_uprobe *tu;

 if (!is_trace_uprobe(ev))
  return 0;

 tu = to_trace_uprobe(ev);
 seq_printf(m, "  %s %-44s %15lu\n", tu->filename,
   trace_probe_name(&tu->tp), tu->nhit);
 return 0;
}
