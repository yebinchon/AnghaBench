
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {int lock; int cpu; struct root_domain* rd; } ;
struct root_domain {int rcu; int span; int refcount; int online; } ;


 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int call_rcu (int *,int ) ;
 int cpu_active_mask ;
 int cpumask_clear_cpu (int ,int ) ;
 int cpumask_set_cpu (int ,int ) ;
 scalar_t__ cpumask_test_cpu (int ,int ) ;
 int free_rootdomain ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int set_rq_offline (struct rq*) ;
 int set_rq_online (struct rq*) ;

void rq_attach_root(struct rq *rq, struct root_domain *rd)
{
 struct root_domain *old_rd = ((void*)0);
 unsigned long flags;

 raw_spin_lock_irqsave(&rq->lock, flags);

 if (rq->rd) {
  old_rd = rq->rd;

  if (cpumask_test_cpu(rq->cpu, old_rd->online))
   set_rq_offline(rq);

  cpumask_clear_cpu(rq->cpu, old_rd->span);






  if (!atomic_dec_and_test(&old_rd->refcount))
   old_rd = ((void*)0);
 }

 atomic_inc(&rd->refcount);
 rq->rd = rd;

 cpumask_set_cpu(rq->cpu, rd->span);
 if (cpumask_test_cpu(rq->cpu, cpu_active_mask))
  set_rq_online(rq);

 raw_spin_unlock_irqrestore(&rq->lock, flags);

 if (old_rd)
  call_rcu(&old_rd->rcu, free_rootdomain);
}
