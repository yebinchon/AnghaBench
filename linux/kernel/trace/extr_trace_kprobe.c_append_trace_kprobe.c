
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_kprobe {int devent; int tp; } ;


 int DIFF_ARG_TYPE ;
 int EEXIST ;
 int ENOENT ;
 int SAME_PROBE ;
 int __register_trace_kprobe (struct trace_kprobe*) ;
 int dyn_event_add (int *) ;
 int pr_warn (char*) ;
 scalar_t__ trace_kprobe_has_same_kprobe (struct trace_kprobe*,struct trace_kprobe*) ;
 int trace_kprobe_module_exist (struct trace_kprobe*) ;
 int trace_probe_append (int *,int *) ;
 int trace_probe_compare_arg_type (int *,int *) ;
 int trace_probe_log_err (int ,int ) ;
 int trace_probe_log_set_index (int) ;
 int trace_probe_unlink (int *) ;

__attribute__((used)) static int append_trace_kprobe(struct trace_kprobe *tk, struct trace_kprobe *to)
{
 int ret;

 ret = trace_probe_compare_arg_type(&tk->tp, &to->tp);
 if (ret) {

  trace_probe_log_set_index(ret + 1);
  trace_probe_log_err(0, DIFF_ARG_TYPE);
  return -EEXIST;
 }
 if (trace_kprobe_has_same_kprobe(to, tk)) {
  trace_probe_log_set_index(0);
  trace_probe_log_err(0, SAME_PROBE);
  return -EEXIST;
 }


 ret = trace_probe_append(&tk->tp, &to->tp);
 if (ret)
  return ret;


 ret = __register_trace_kprobe(tk);
 if (ret == -ENOENT && !trace_kprobe_module_exist(tk)) {
  pr_warn("This probe might be able to register after target module is loaded. Continue.\n");
  ret = 0;
 }

 if (ret)
  trace_probe_unlink(&tk->tp);
 else
  dyn_event_add(&tk->devent);

 return ret;
}
