
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {int flags; } ;
struct cpumask {int dummy; } ;
struct TYPE_5__ {unsigned int kswapd_order; int kswapd_classzone_idx; int node_id; } ;
typedef TYPE_1__ pg_data_t ;


 int MAX_NR_ZONES ;
 int PF_KSWAPD ;
 int PF_MEMALLOC ;
 int PF_SWAPWRITE ;
 unsigned int balance_pgdat (TYPE_1__*,unsigned int,unsigned int) ;
 int cpumask_empty (struct cpumask const*) ;
 struct cpumask* cpumask_of_node (int ) ;
 struct task_struct* current ;
 unsigned int kswapd_classzone_idx (TYPE_1__*,unsigned int) ;
 int kswapd_try_to_sleep (TYPE_1__*,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ kthread_should_stop () ;
 int set_cpus_allowed_ptr (struct task_struct*,struct cpumask const*) ;
 int set_freezable () ;
 int trace_mm_vmscan_kswapd_wake (int ,unsigned int,unsigned int) ;
 int try_to_freeze () ;

__attribute__((used)) static int kswapd(void *p)
{
 unsigned int alloc_order, reclaim_order;
 unsigned int classzone_idx = MAX_NR_ZONES - 1;
 pg_data_t *pgdat = (pg_data_t*)p;
 struct task_struct *tsk = current;
 const struct cpumask *cpumask = cpumask_of_node(pgdat->node_id);

 if (!cpumask_empty(cpumask))
  set_cpus_allowed_ptr(tsk, cpumask);
 tsk->flags |= PF_MEMALLOC | PF_SWAPWRITE | PF_KSWAPD;
 set_freezable();

 pgdat->kswapd_order = 0;
 pgdat->kswapd_classzone_idx = MAX_NR_ZONES;
 for ( ; ; ) {
  bool ret;

  alloc_order = reclaim_order = pgdat->kswapd_order;
  classzone_idx = kswapd_classzone_idx(pgdat, classzone_idx);

kswapd_try_sleep:
  kswapd_try_to_sleep(pgdat, alloc_order, reclaim_order,
     classzone_idx);


  alloc_order = reclaim_order = pgdat->kswapd_order;
  classzone_idx = kswapd_classzone_idx(pgdat, classzone_idx);
  pgdat->kswapd_order = 0;
  pgdat->kswapd_classzone_idx = MAX_NR_ZONES;

  ret = try_to_freeze();
  if (kthread_should_stop())
   break;





  if (ret)
   continue;
  trace_mm_vmscan_kswapd_wake(pgdat->node_id, classzone_idx,
      alloc_order);
  reclaim_order = balance_pgdat(pgdat, alloc_order, classzone_idx);
  if (reclaim_order < alloc_order)
   goto kswapd_try_sleep;
 }

 tsk->flags &= ~(PF_MEMALLOC | PF_SWAPWRITE | PF_KSWAPD);

 return 0;
}
