
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct workqueue_struct {int flags; int mutex; struct pool_workqueue* dfl_pwq; int name; TYPE_3__* unbound_attrs; } ;
struct workqueue_attrs {int * cpumask; } ;
struct pool_workqueue {TYPE_1__* pool; } ;
typedef int cpumask_t ;
struct TYPE_6__ {scalar_t__ no_numa; } ;
struct TYPE_5__ {int cpumask; } ;
struct TYPE_4__ {int lock; TYPE_2__* attrs; } ;


 int WQ_UNBOUND ;
 struct pool_workqueue* alloc_unbound_pwq (struct workqueue_struct*,struct workqueue_attrs*) ;
 int copy_workqueue_attrs (struct workqueue_attrs*,TYPE_3__*) ;
 int cpu_to_node (int) ;
 scalar_t__ cpumask_equal (int *,int ) ;
 int get_pwq (struct pool_workqueue*) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pool_workqueue* numa_pwq_tbl_install (struct workqueue_struct*,int,struct pool_workqueue*) ;
 int pr_warn (char*,int ) ;
 int put_pwq_unlocked (struct pool_workqueue*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct pool_workqueue* unbound_pwq_by_node (struct workqueue_struct*,int) ;
 scalar_t__ wq_calc_node_cpumask (TYPE_2__*,int,int,int *) ;
 int wq_numa_enabled ;
 int wq_pool_mutex ;
 struct workqueue_attrs* wq_update_unbound_numa_attrs_buf ;

__attribute__((used)) static void wq_update_unbound_numa(struct workqueue_struct *wq, int cpu,
       bool online)
{
 int node = cpu_to_node(cpu);
 int cpu_off = online ? -1 : cpu;
 struct pool_workqueue *old_pwq = ((void*)0), *pwq;
 struct workqueue_attrs *target_attrs;
 cpumask_t *cpumask;

 lockdep_assert_held(&wq_pool_mutex);

 if (!wq_numa_enabled || !(wq->flags & WQ_UNBOUND) ||
     wq->unbound_attrs->no_numa)
  return;






 target_attrs = wq_update_unbound_numa_attrs_buf;
 cpumask = target_attrs->cpumask;

 copy_workqueue_attrs(target_attrs, wq->unbound_attrs);
 pwq = unbound_pwq_by_node(wq, node);







 if (wq_calc_node_cpumask(wq->dfl_pwq->pool->attrs, node, cpu_off, cpumask)) {
  if (cpumask_equal(cpumask, pwq->pool->attrs->cpumask))
   return;
 } else {
  goto use_dfl_pwq;
 }


 pwq = alloc_unbound_pwq(wq, target_attrs);
 if (!pwq) {
  pr_warn("workqueue: allocation failed while updating NUMA affinity of \"%s\"\n",
   wq->name);
  goto use_dfl_pwq;
 }


 mutex_lock(&wq->mutex);
 old_pwq = numa_pwq_tbl_install(wq, node, pwq);
 goto out_unlock;

use_dfl_pwq:
 mutex_lock(&wq->mutex);
 spin_lock_irq(&wq->dfl_pwq->pool->lock);
 get_pwq(wq->dfl_pwq);
 spin_unlock_irq(&wq->dfl_pwq->pool->lock);
 old_pwq = numa_pwq_tbl_install(wq, node, wq->dfl_pwq);
out_unlock:
 mutex_unlock(&wq->mutex);
 put_pwq_unlocked(old_pwq);
}
