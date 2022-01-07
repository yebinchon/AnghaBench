
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct perf_event {TYPE_1__* tp_event; struct bpf_prog* prog; } ;
struct bpf_prog_array {int dummy; } ;
struct bpf_prog {scalar_t__ kprobe_override; } ;
struct TYPE_3__ {int prog_array; } ;


 scalar_t__ BPF_TRACE_MAX_PROGS ;
 int E2BIG ;
 int EEXIST ;
 int EINVAL ;
 int bpf_event_mutex ;
 struct bpf_prog_array* bpf_event_rcu_dereference (int ) ;
 int bpf_prog_array_copy (struct bpf_prog_array*,int *,struct bpf_prog*,struct bpf_prog_array**) ;
 int bpf_prog_array_free (struct bpf_prog_array*) ;
 scalar_t__ bpf_prog_array_length (struct bpf_prog_array*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,struct bpf_prog_array*) ;
 int trace_kprobe_error_injectable (TYPE_1__*) ;
 int trace_kprobe_on_func_entry (TYPE_1__*) ;

int perf_event_attach_bpf_prog(struct perf_event *event,
          struct bpf_prog *prog)
{
 struct bpf_prog_array *old_array;
 struct bpf_prog_array *new_array;
 int ret = -EEXIST;





 if (prog->kprobe_override &&
     (!trace_kprobe_on_func_entry(event->tp_event) ||
      !trace_kprobe_error_injectable(event->tp_event)))
  return -EINVAL;

 mutex_lock(&bpf_event_mutex);

 if (event->prog)
  goto unlock;

 old_array = bpf_event_rcu_dereference(event->tp_event->prog_array);
 if (old_array &&
     bpf_prog_array_length(old_array) >= BPF_TRACE_MAX_PROGS) {
  ret = -E2BIG;
  goto unlock;
 }

 ret = bpf_prog_array_copy(old_array, ((void*)0), prog, &new_array);
 if (ret < 0)
  goto unlock;


 event->prog = prog;
 rcu_assign_pointer(event->tp_event->prog_array, new_array);
 bpf_prog_array_free(old_array);

unlock:
 mutex_unlock(&bpf_event_mutex);
 return ret;
}
