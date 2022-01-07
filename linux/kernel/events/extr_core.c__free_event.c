
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ target; } ;
struct TYPE_4__ {int sample_type; } ;
struct perf_event {int rcu_head; TYPE_3__* pmu; scalar_t__ ctx; TYPE_2__ hw; int (* destroy ) (struct perf_event*) ;int addr_filter_ranges; TYPE_1__ attr; int parent; int mmap_mutex; scalar_t__ rb; int pending; } ;
struct TYPE_6__ {int module; } ;


 int PERF_SAMPLE_CALLCHAIN ;
 int call_rcu (int *,int ) ;
 int exclusive_event_destroy (struct perf_event*) ;
 int free_event_rcu ;
 int irq_work_sync (int *) ;
 scalar_t__ is_cgroup_event (struct perf_event*) ;
 int kfree (int ) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int perf_addr_filters_splice (struct perf_event*,int *) ;
 int perf_detach_cgroup (struct perf_event*) ;
 int perf_event_free_bpf_prog (struct perf_event*) ;
 int put_callchain_buffers () ;
 int put_ctx (scalar_t__) ;
 int put_task_struct (scalar_t__) ;
 int ring_buffer_attach (struct perf_event*,int *) ;
 int stub1 (struct perf_event*) ;
 int unaccount_event (struct perf_event*) ;

__attribute__((used)) static void _free_event(struct perf_event *event)
{
 irq_work_sync(&event->pending);

 unaccount_event(event);

 if (event->rb) {






  mutex_lock(&event->mmap_mutex);
  ring_buffer_attach(event, ((void*)0));
  mutex_unlock(&event->mmap_mutex);
 }

 if (is_cgroup_event(event))
  perf_detach_cgroup(event);

 if (!event->parent) {
  if (event->attr.sample_type & PERF_SAMPLE_CALLCHAIN)
   put_callchain_buffers();
 }

 perf_event_free_bpf_prog(event);
 perf_addr_filters_splice(event, ((void*)0));
 kfree(event->addr_filter_ranges);

 if (event->destroy)
  event->destroy(event);





 if (event->hw.target)
  put_task_struct(event->hw.target);





 if (event->ctx)
  put_ctx(event->ctx);

 exclusive_event_destroy(event);
 module_put(event->pmu->module);

 call_rcu(&event->rcu_head, free_event_rcu);
}
