
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pmu {int capabilities; int nr_addr_filters; int module; } ;
struct perf_event_attr {int sample_period; int sample_type; int sample_max_stack; scalar_t__ aux_output; scalar_t__ branch_sample_type; scalar_t__ inherit; scalar_t__ sample_freq; scalar_t__ freq; } ;
struct hw_perf_event {int sample_period; int last_period; scalar_t__ target; int period_left; } ;
struct TYPE_2__ {int lock; int list; } ;
struct perf_event {int pending_disable; int cpu; int oncpu; scalar_t__ overflow_handler; int addr_filters_gen; struct hw_perf_event hw; scalar_t__ ns; int (* destroy ) (struct perf_event*) ;struct perf_event* addr_filter_ranges; struct perf_event_attr attr; struct perf_event* parent; int * overflow_handler_context; int orig_overflow_handler; struct pmu* prog; int * clock; int attach_state; int state; int id; int * pmu; struct perf_event* group_leader; int refcount; TYPE_1__ addr_filters; int mmap_mutex; int pending; int waitq; int hlist_entry; int active_entry; int rb_entry; int active_list; int sibling_list; int event_entry; int child_list; int child_mutex; } ;
struct perf_addr_filters_head {int lock; } ;
struct perf_addr_filter_range {int dummy; } ;
struct bpf_prog {int capabilities; int nr_addr_filters; int module; } ;
typedef scalar_t__ perf_overflow_handler_t ;


 long EINVAL ;
 long ENOMEM ;
 long EOPNOTSUPP ;
 struct perf_event* ERR_PTR (long) ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct pmu*) ;
 int PERF_ATTACH_TASK ;
 int PERF_EVENT_STATE_INACTIVE ;
 int PERF_PMU_CAP_AUX_OUTPUT ;
 int PERF_SAMPLE_CALLCHAIN ;
 int PERF_SAMPLE_READ ;
 long PTR_ERR (struct pmu*) ;
 int account_event (struct perf_event*) ;
 int atomic64_inc_return (int *) ;
 int atomic_long_set (int *,int) ;
 scalar_t__ bpf_overflow_handler ;
 struct pmu* bpf_prog_inc (struct pmu*) ;
 int current ;
 int exclusive_event_destroy (struct perf_event*) ;
 long exclusive_event_init (struct perf_event*) ;
 long get_callchain_buffers (int ) ;
 scalar_t__ get_pid_ns (int ) ;
 scalar_t__ get_task_struct (struct task_struct*) ;
 scalar_t__ has_addr_filter (struct perf_event*) ;
 int has_branch_stack (struct perf_event*) ;
 int init_event_group (struct perf_event*) ;
 int init_irq_work (int *,int ) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ is_cgroup_event (struct perf_event*) ;
 scalar_t__ is_write_backward (struct perf_event*) ;
 struct perf_event* kcalloc (int,int,int ) ;
 int kfree (struct perf_event*) ;
 struct perf_event* kzalloc (int,int ) ;
 int local64_set (int *,int) ;
 int local_clock ;
 int memcpy (struct perf_event*,struct perf_event*,int) ;
 int module_put (int ) ;
 int mutex_init (int *) ;
 unsigned int nr_cpu_ids ;
 long perf_cgroup_connect (int,struct perf_event*,struct perf_event_attr*,struct perf_event*) ;
 int perf_detach_cgroup (struct perf_event*) ;
 int perf_event__state_init (struct perf_event*) ;
 struct perf_addr_filters_head* perf_event_addr_filters (struct perf_event*) ;
 int perf_event_id ;
 scalar_t__ perf_event_output_backward ;
 scalar_t__ perf_event_output_forward ;
 struct pmu* perf_init_event (struct perf_event*) ;
 int perf_pending_event ;
 int put_pid_ns (scalar_t__) ;
 int put_task_struct (scalar_t__) ;
 int raw_spin_lock_init (int *) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int stub1 (struct perf_event*) ;
 int task_active_pid_ns (int ) ;

__attribute__((used)) static struct perf_event *
perf_event_alloc(struct perf_event_attr *attr, int cpu,
   struct task_struct *task,
   struct perf_event *group_leader,
   struct perf_event *parent_event,
   perf_overflow_handler_t overflow_handler,
   void *context, int cgroup_fd)
{
 struct pmu *pmu;
 struct perf_event *event;
 struct hw_perf_event *hwc;
 long err = -EINVAL;

 if ((unsigned)cpu >= nr_cpu_ids) {
  if (!task || cpu != -1)
   return ERR_PTR(-EINVAL);
 }

 event = kzalloc(sizeof(*event), GFP_KERNEL);
 if (!event)
  return ERR_PTR(-ENOMEM);





 if (!group_leader)
  group_leader = event;

 mutex_init(&event->child_mutex);
 INIT_LIST_HEAD(&event->child_list);

 INIT_LIST_HEAD(&event->event_entry);
 INIT_LIST_HEAD(&event->sibling_list);
 INIT_LIST_HEAD(&event->active_list);
 init_event_group(event);
 INIT_LIST_HEAD(&event->rb_entry);
 INIT_LIST_HEAD(&event->active_entry);
 INIT_LIST_HEAD(&event->addr_filters.list);
 INIT_HLIST_NODE(&event->hlist_entry);


 init_waitqueue_head(&event->waitq);
 event->pending_disable = -1;
 init_irq_work(&event->pending, perf_pending_event);

 mutex_init(&event->mmap_mutex);
 raw_spin_lock_init(&event->addr_filters.lock);

 atomic_long_set(&event->refcount, 1);
 event->cpu = cpu;
 event->attr = *attr;
 event->group_leader = group_leader;
 event->pmu = ((void*)0);
 event->oncpu = -1;

 event->parent = parent_event;

 event->ns = get_pid_ns(task_active_pid_ns(current));
 event->id = atomic64_inc_return(&perf_event_id);

 event->state = PERF_EVENT_STATE_INACTIVE;

 if (task) {
  event->attach_state = PERF_ATTACH_TASK;





  event->hw.target = get_task_struct(task);
 }

 event->clock = &local_clock;
 if (parent_event)
  event->clock = parent_event->clock;

 if (!overflow_handler && parent_event) {
  overflow_handler = parent_event->overflow_handler;
  context = parent_event->overflow_handler_context;
 }

 if (overflow_handler) {
  event->overflow_handler = overflow_handler;
  event->overflow_handler_context = context;
 } else if (is_write_backward(event)){
  event->overflow_handler = perf_event_output_backward;
  event->overflow_handler_context = ((void*)0);
 } else {
  event->overflow_handler = perf_event_output_forward;
  event->overflow_handler_context = ((void*)0);
 }

 perf_event__state_init(event);

 pmu = ((void*)0);

 hwc = &event->hw;
 hwc->sample_period = attr->sample_period;
 if (attr->freq && attr->sample_freq)
  hwc->sample_period = 1;
 hwc->last_period = hwc->sample_period;

 local64_set(&hwc->period_left, hwc->sample_period);





 if (attr->inherit && (attr->sample_type & PERF_SAMPLE_READ))
  goto err_ns;

 if (!has_branch_stack(event))
  event->attr.branch_sample_type = 0;

 if (cgroup_fd != -1) {
  err = perf_cgroup_connect(cgroup_fd, event, attr, group_leader);
  if (err)
   goto err_ns;
 }

 pmu = perf_init_event(event);
 if (IS_ERR(pmu)) {
  err = PTR_ERR(pmu);
  goto err_ns;
 }

 if (event->attr.aux_output &&
     !(pmu->capabilities & PERF_PMU_CAP_AUX_OUTPUT)) {
  err = -EOPNOTSUPP;
  goto err_pmu;
 }

 err = exclusive_event_init(event);
 if (err)
  goto err_pmu;

 if (has_addr_filter(event)) {
  event->addr_filter_ranges = kcalloc(pmu->nr_addr_filters,
          sizeof(struct perf_addr_filter_range),
          GFP_KERNEL);
  if (!event->addr_filter_ranges) {
   err = -ENOMEM;
   goto err_per_task;
  }





  if (event->parent) {
   struct perf_addr_filters_head *ifh = perf_event_addr_filters(event);

   raw_spin_lock_irq(&ifh->lock);
   memcpy(event->addr_filter_ranges,
          event->parent->addr_filter_ranges,
          pmu->nr_addr_filters * sizeof(struct perf_addr_filter_range));
   raw_spin_unlock_irq(&ifh->lock);
  }


  event->addr_filters_gen = 1;
 }

 if (!event->parent) {
  if (event->attr.sample_type & PERF_SAMPLE_CALLCHAIN) {
   err = get_callchain_buffers(attr->sample_max_stack);
   if (err)
    goto err_addr_filters;
  }
 }


 account_event(event);

 return event;

err_addr_filters:
 kfree(event->addr_filter_ranges);

err_per_task:
 exclusive_event_destroy(event);

err_pmu:
 if (event->destroy)
  event->destroy(event);
 module_put(pmu->module);
err_ns:
 if (is_cgroup_event(event))
  perf_detach_cgroup(event);
 if (event->ns)
  put_pid_ns(event->ns);
 if (event->hw.target)
  put_task_struct(event->hw.target);
 kfree(event);

 return ERR_PTR(err);
}
