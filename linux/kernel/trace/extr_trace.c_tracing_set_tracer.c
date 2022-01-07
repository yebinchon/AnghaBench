
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer {int enabled; scalar_t__ init; scalar_t__ use_max_tr; int (* reset ) (struct trace_array*) ;scalar_t__ ref; int name; scalar_t__ noboot; struct tracer* next; } ;
struct trace_array {int allocated_snapshot; struct tracer* current_trace; int max_lock; scalar_t__ cond_snapshot; } ;


 int EBUSY ;
 int EINVAL ;
 int RING_BUFFER_ALL_CPUS ;
 scalar_t__ SYSTEM_RUNNING ;
 int __tracing_resize_ring_buffer (struct trace_array*,int ,int ) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int free_snapshot (struct trace_array*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tracer nop_trace ;
 int pr_warn (char*,int ) ;
 int ring_buffer_expanded ;
 scalar_t__ strcmp (int ,char const*) ;
 int stub1 (struct trace_array*) ;
 int synchronize_rcu () ;
 scalar_t__ system_state ;
 int trace_branch_disable () ;
 int trace_branch_enable (struct trace_array*) ;
 int trace_buf_size ;
 int trace_ok_for_array (struct tracer*,struct trace_array*) ;
 struct tracer* trace_types ;
 int trace_types_lock ;
 int tracer_init (struct tracer*,struct trace_array*) ;
 int tracing_alloc_snapshot_instance (struct trace_array*) ;

__attribute__((used)) static int tracing_set_tracer(struct trace_array *tr, const char *buf)
{
 struct tracer *t;



 int ret = 0;

 mutex_lock(&trace_types_lock);

 if (!ring_buffer_expanded) {
  ret = __tracing_resize_ring_buffer(tr, trace_buf_size,
      RING_BUFFER_ALL_CPUS);
  if (ret < 0)
   goto out;
  ret = 0;
 }

 for (t = trace_types; t; t = t->next) {
  if (strcmp(t->name, buf) == 0)
   break;
 }
 if (!t) {
  ret = -EINVAL;
  goto out;
 }
 if (t == tr->current_trace)
  goto out;
 if (system_state < SYSTEM_RUNNING && t->noboot) {
  pr_warn("Tracer '%s' is not allowed on command line, ignored\n",
   t->name);
  goto out;
 }


 if (!trace_ok_for_array(t, tr)) {
  ret = -EINVAL;
  goto out;
 }


 if (tr->current_trace->ref) {
  ret = -EBUSY;
  goto out;
 }

 trace_branch_disable();

 tr->current_trace->enabled--;

 if (tr->current_trace->reset)
  tr->current_trace->reset(tr);


 tr->current_trace = &nop_trace;
 if (t->init) {
  ret = tracer_init(t, tr);
  if (ret)
   goto out;
 }

 tr->current_trace = t;
 tr->current_trace->enabled++;
 trace_branch_enable(tr);
 out:
 mutex_unlock(&trace_types_lock);

 return ret;
}
