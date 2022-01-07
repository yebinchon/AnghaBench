
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_kprobe {int devent; int tp; } ;


 int DIFF_PROBE_TYPE ;
 int EEXIST ;
 int ENOENT ;
 int __register_trace_kprobe (struct trace_kprobe*) ;
 int append_trace_kprobe (struct trace_kprobe*,struct trace_kprobe*) ;
 int dyn_event_add (int *) ;
 int event_mutex ;
 struct trace_kprobe* find_trace_kprobe (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,...) ;
 int register_kprobe_event (struct trace_kprobe*) ;
 scalar_t__ trace_kprobe_is_return (struct trace_kprobe*) ;
 int trace_kprobe_module_exist (struct trace_kprobe*) ;
 int trace_probe_group_name (int *) ;
 int trace_probe_log_err (int ,int ) ;
 int trace_probe_log_set_index (int ) ;
 int trace_probe_name (int *) ;
 int unregister_kprobe_event (struct trace_kprobe*) ;

__attribute__((used)) static int register_trace_kprobe(struct trace_kprobe *tk)
{
 struct trace_kprobe *old_tk;
 int ret;

 mutex_lock(&event_mutex);

 old_tk = find_trace_kprobe(trace_probe_name(&tk->tp),
       trace_probe_group_name(&tk->tp));
 if (old_tk) {
  if (trace_kprobe_is_return(tk) != trace_kprobe_is_return(old_tk)) {
   trace_probe_log_set_index(0);
   trace_probe_log_err(0, DIFF_PROBE_TYPE);
   ret = -EEXIST;
  } else {
   ret = append_trace_kprobe(tk, old_tk);
  }
  goto end;
 }


 ret = register_kprobe_event(tk);
 if (ret) {
  pr_warn("Failed to register probe event(%d)\n", ret);
  goto end;
 }


 ret = __register_trace_kprobe(tk);
 if (ret == -ENOENT && !trace_kprobe_module_exist(tk)) {
  pr_warn("This probe might be able to register after target module is loaded. Continue.\n");
  ret = 0;
 }

 if (ret < 0)
  unregister_kprobe_event(tk);
 else
  dyn_event_add(&tk->devent);

end:
 mutex_unlock(&event_mutex);
 return ret;
}
