
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_uprobe {int devent; int tp; } ;


 int DIFF_ARG_TYPE ;
 int EEXIST ;
 int SAME_PROBE ;
 int dyn_event_add (int *) ;
 int trace_probe_append (int *,int *) ;
 int trace_probe_compare_arg_type (int *,int *) ;
 int trace_probe_log_err (int ,int ) ;
 int trace_probe_log_set_index (int) ;
 scalar_t__ trace_uprobe_has_same_uprobe (struct trace_uprobe*,struct trace_uprobe*) ;

__attribute__((used)) static int append_trace_uprobe(struct trace_uprobe *tu, struct trace_uprobe *to)
{
 int ret;

 ret = trace_probe_compare_arg_type(&tu->tp, &to->tp);
 if (ret) {

  trace_probe_log_set_index(ret + 1);
  trace_probe_log_err(0, DIFF_ARG_TYPE);
  return -EEXIST;
 }
 if (trace_uprobe_has_same_uprobe(to, tu)) {
  trace_probe_log_set_index(0);
  trace_probe_log_err(0, SAME_PROBE);
  return -EEXIST;
 }


 ret = trace_probe_append(&tu->tp, &to->tp);
 if (!ret)
  dyn_event_add(&tu->devent);

 return ret;
}
