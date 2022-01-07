
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nr_args; TYPE_1__* args; } ;
struct trace_uprobe {char ref_ctr_offset; TYPE_2__ tp; int offset; int filename; } ;
struct seq_file {int dummy; } ;
struct dyn_event {int dummy; } ;
struct TYPE_4__ {int comm; int name; } ;


 scalar_t__ is_ret_probe (struct trace_uprobe*) ;
 int seq_printf (struct seq_file*,char*,char,...) ;
 int seq_putc (struct seq_file*,char) ;
 struct trace_uprobe* to_trace_uprobe (struct dyn_event*) ;
 int trace_probe_group_name (TYPE_2__*) ;
 int trace_probe_name (TYPE_2__*) ;

__attribute__((used)) static int trace_uprobe_show(struct seq_file *m, struct dyn_event *ev)
{
 struct trace_uprobe *tu = to_trace_uprobe(ev);
 char c = is_ret_probe(tu) ? 'r' : 'p';
 int i;

 seq_printf(m, "%c:%s/%s %s:0x%0*lx", c, trace_probe_group_name(&tu->tp),
   trace_probe_name(&tu->tp), tu->filename,
   (int)(sizeof(void *) * 2), tu->offset);

 if (tu->ref_ctr_offset)
  seq_printf(m, "(0x%lx)", tu->ref_ctr_offset);

 for (i = 0; i < tu->tp.nr_args; i++)
  seq_printf(m, " %s=%s", tu->tp.args[i].name, tu->tp.args[i].comm);

 seq_putc(m, '\n');
 return 0;
}
