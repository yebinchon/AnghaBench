
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_uprobe {int devent; int tp; } ;


 int DIFF_PROBE_TYPE ;
 int EEXIST ;
 int append_trace_uprobe (struct trace_uprobe*,struct trace_uprobe*) ;
 int dyn_event_add (int *) ;
 int event_mutex ;
 struct trace_uprobe* find_probe_event (int ,int ) ;
 scalar_t__ is_ret_probe (struct trace_uprobe*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int) ;
 int register_uprobe_event (struct trace_uprobe*) ;
 int trace_probe_group_name (int *) ;
 int trace_probe_log_err (int ,int ) ;
 int trace_probe_log_set_index (int ) ;
 int trace_probe_name (int *) ;
 int validate_ref_ctr_offset (struct trace_uprobe*) ;

__attribute__((used)) static int register_trace_uprobe(struct trace_uprobe *tu)
{
 struct trace_uprobe *old_tu;
 int ret;

 mutex_lock(&event_mutex);

 ret = validate_ref_ctr_offset(tu);
 if (ret)
  goto end;


 old_tu = find_probe_event(trace_probe_name(&tu->tp),
      trace_probe_group_name(&tu->tp));
 if (old_tu) {
  if (is_ret_probe(tu) != is_ret_probe(old_tu)) {
   trace_probe_log_set_index(0);
   trace_probe_log_err(0, DIFF_PROBE_TYPE);
   ret = -EEXIST;
  } else {
   ret = append_trace_uprobe(tu, old_tu);
  }
  goto end;
 }

 ret = register_uprobe_event(tu);
 if (ret) {
  pr_warn("Failed to register probe event(%d)\n", ret);
  goto end;
 }

 dyn_event_add(&tu->devent);

end:
 mutex_unlock(&event_mutex);

 return ret;
}
