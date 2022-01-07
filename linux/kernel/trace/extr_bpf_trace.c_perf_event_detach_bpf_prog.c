
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int * prog; TYPE_1__* tp_event; } ;
struct bpf_prog_array {int dummy; } ;
struct TYPE_2__ {int prog_array; } ;


 int ENOENT ;
 int bpf_event_mutex ;
 struct bpf_prog_array* bpf_event_rcu_dereference (int ) ;
 int bpf_prog_array_copy (struct bpf_prog_array*,int *,int *,struct bpf_prog_array**) ;
 int bpf_prog_array_delete_safe (struct bpf_prog_array*,int *) ;
 int bpf_prog_array_free (struct bpf_prog_array*) ;
 int bpf_prog_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,struct bpf_prog_array*) ;

void perf_event_detach_bpf_prog(struct perf_event *event)
{
 struct bpf_prog_array *old_array;
 struct bpf_prog_array *new_array;
 int ret;

 mutex_lock(&bpf_event_mutex);

 if (!event->prog)
  goto unlock;

 old_array = bpf_event_rcu_dereference(event->tp_event->prog_array);
 ret = bpf_prog_array_copy(old_array, event->prog, ((void*)0), &new_array);
 if (ret == -ENOENT)
  goto unlock;
 if (ret < 0) {
  bpf_prog_array_delete_safe(old_array, event->prog);
 } else {
  rcu_assign_pointer(event->tp_event->prog_array, new_array);
  bpf_prog_array_free(old_array);
 }

 bpf_prog_put(event->prog);
 event->prog = ((void*)0);

unlock:
 mutex_unlock(&bpf_event_mutex);
}
