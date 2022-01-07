
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int flags; int name; int cpu_pwqs; } ;
struct list_head {int dummy; } ;
struct worker_pool {int lock; int watchdog_ts; struct list_head worklist; } ;
struct worker {struct pool_workqueue* current_pwq; } ;
struct work_struct {struct list_head entry; } ;
struct pool_workqueue {size_t work_color; scalar_t__ nr_active; scalar_t__ max_active; struct worker_pool* pool; struct list_head delayed_works; int * nr_in_flight; int refcnt; struct workqueue_struct* wq; } ;


 scalar_t__ WARN_ON (int) ;
 int WARN_ONCE (int,char*,int ,int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 unsigned int WORK_CPU_UNBOUND ;
 unsigned int WORK_STRUCT_DELAYED ;
 int WQ_UNBOUND ;
 int __WQ_DRAINING ;
 int cpu_relax () ;
 int cpu_to_node (int) ;
 int debug_work_activate (struct work_struct*) ;
 struct worker* find_worker_executing_work (struct worker_pool*,struct work_struct*) ;
 struct worker_pool* get_work_pool (struct work_struct*) ;
 int insert_work (struct pool_workqueue*,struct work_struct*,struct list_head*,unsigned int) ;
 int is_chained_work (struct workqueue_struct*) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 scalar_t__ list_empty (struct list_head*) ;
 int lockdep_assert_irqs_disabled () ;
 struct pool_workqueue* per_cpu_ptr (int ,int) ;
 int raw_smp_processor_id () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_workqueue_activate_work (struct work_struct*) ;
 int trace_workqueue_queue_work (unsigned int,struct pool_workqueue*,struct work_struct*) ;
 struct pool_workqueue* unbound_pwq_by_node (struct workqueue_struct*,int ) ;
 scalar_t__ unlikely (int) ;
 unsigned int work_color_to_flags (size_t) ;
 int wq_select_unbound_cpu (int ) ;

__attribute__((used)) static void __queue_work(int cpu, struct workqueue_struct *wq,
    struct work_struct *work)
{
 struct pool_workqueue *pwq;
 struct worker_pool *last_pool;
 struct list_head *worklist;
 unsigned int work_flags;
 unsigned int req_cpu = cpu;







 lockdep_assert_irqs_disabled();

 debug_work_activate(work);


 if (unlikely(wq->flags & __WQ_DRAINING) &&
     WARN_ON_ONCE(!is_chained_work(wq)))
  return;
 rcu_read_lock();
retry:
 if (req_cpu == WORK_CPU_UNBOUND)
  cpu = wq_select_unbound_cpu(raw_smp_processor_id());


 if (!(wq->flags & WQ_UNBOUND))
  pwq = per_cpu_ptr(wq->cpu_pwqs, cpu);
 else
  pwq = unbound_pwq_by_node(wq, cpu_to_node(cpu));






 last_pool = get_work_pool(work);
 if (last_pool && last_pool != pwq->pool) {
  struct worker *worker;

  spin_lock(&last_pool->lock);

  worker = find_worker_executing_work(last_pool, work);

  if (worker && worker->current_pwq->wq == wq) {
   pwq = worker->current_pwq;
  } else {

   spin_unlock(&last_pool->lock);
   spin_lock(&pwq->pool->lock);
  }
 } else {
  spin_lock(&pwq->pool->lock);
 }
 if (unlikely(!pwq->refcnt)) {
  if (wq->flags & WQ_UNBOUND) {
   spin_unlock(&pwq->pool->lock);
   cpu_relax();
   goto retry;
  }

  WARN_ONCE(1, "workqueue: per-cpu pwq for %s on cpu%d has 0 refcnt",
     wq->name, cpu);
 }


 trace_workqueue_queue_work(req_cpu, pwq, work);

 if (WARN_ON(!list_empty(&work->entry)))
  goto out;

 pwq->nr_in_flight[pwq->work_color]++;
 work_flags = work_color_to_flags(pwq->work_color);

 if (likely(pwq->nr_active < pwq->max_active)) {
  trace_workqueue_activate_work(work);
  pwq->nr_active++;
  worklist = &pwq->pool->worklist;
  if (list_empty(worklist))
   pwq->pool->watchdog_ts = jiffies;
 } else {
  work_flags |= WORK_STRUCT_DELAYED;
  worklist = &pwq->delayed_works;
 }

 insert_work(pwq, work, worklist, work_flags);

out:
 spin_unlock(&pwq->pool->lock);
 rcu_read_unlock();
}
