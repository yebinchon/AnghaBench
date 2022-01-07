
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int (* synth_probe_func_t ) (void*,int *,unsigned int) ;
struct tracepoint_func {void* data; int (* func ) (void*,int *,unsigned int) ;} ;
struct TYPE_2__ {int enabled; } ;
struct tracepoint {int funcs; TYPE_1__ key; } ;
struct synth_event {struct tracepoint* tp; } ;


 scalar_t__ atomic_read (int *) ;
 int cpu_online (int ) ;
 int raw_smp_processor_id () ;
 struct tracepoint_func* rcu_dereference_sched (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void trace_synth(struct synth_event *event, u64 *var_ref_vals,
          unsigned int var_ref_idx)
{
 struct tracepoint *tp = event->tp;

 if (unlikely(atomic_read(&tp->key.enabled) > 0)) {
  struct tracepoint_func *probe_func_ptr;
  synth_probe_func_t probe_func;
  void *__data;

  if (!(cpu_online(raw_smp_processor_id())))
   return;

  probe_func_ptr = rcu_dereference_sched((tp)->funcs);
  if (probe_func_ptr) {
   do {
    probe_func = probe_func_ptr->func;
    __data = probe_func_ptr->data;
    probe_func(__data, var_ref_vals, var_ref_idx);
   } while ((++probe_func_ptr)->func);
  }
 }
}
