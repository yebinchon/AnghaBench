
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbcpu; int pcpu; } ;
struct parallel_data {TYPE_1__ cpumask; } ;
struct padata_instance {int flags; int cpumask_change_notifier; struct parallel_data* pd; } ;


 int PADATA_CPU_PARALLEL ;
 int PADATA_CPU_SERIAL ;
 int PADATA_RESET ;
 int blocking_notifier_call_chain (int *,int,TYPE_1__*) ;
 int cpumask_equal (int ,int ) ;
 int padata_flush_queues (struct parallel_data*) ;
 int padata_free_pd (struct parallel_data*) ;
 int rcu_assign_pointer (struct parallel_data*,struct parallel_data*) ;
 int synchronize_rcu () ;

__attribute__((used)) static void padata_replace(struct padata_instance *pinst,
      struct parallel_data *pd_new)
{
 struct parallel_data *pd_old = pinst->pd;
 int notification_mask = 0;

 pinst->flags |= PADATA_RESET;

 rcu_assign_pointer(pinst->pd, pd_new);

 synchronize_rcu();

 if (!cpumask_equal(pd_old->cpumask.pcpu, pd_new->cpumask.pcpu))
  notification_mask |= PADATA_CPU_PARALLEL;
 if (!cpumask_equal(pd_old->cpumask.cbcpu, pd_new->cpumask.cbcpu))
  notification_mask |= PADATA_CPU_SERIAL;

 padata_flush_queues(pd_old);
 padata_free_pd(pd_old);

 if (notification_mask)
  blocking_notifier_call_chain(&pinst->cpumask_change_notifier,
          notification_mask,
          &pd_new->cpumask);

 pinst->flags &= ~PADATA_RESET;
}
