
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbcpu; } ;
struct parallel_data {int pqueue; int seq_nr; int refcnt; TYPE_1__ cpumask; } ;
struct padata_priv {int cb_cpu; int cpu; int list; int seq_nr; struct parallel_data* pd; } ;
struct TYPE_4__ {int lock; int list; } ;
struct padata_parallel_queue {int work; TYPE_2__ parallel; } ;
struct padata_instance {int flags; int parallel_wq; int pd; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ MAX_OBJ_NUM ;
 int PADATA_INIT ;
 int PADATA_INVALID ;
 int PADATA_RESET ;
 int atomic_inc (int *) ;
 int atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int cpumask_first (int ) ;
 int cpumask_next (int,int ) ;
 int cpumask_test_cpu (int,int ) ;
 int cpumask_weight (int ) ;
 int list_add_tail (int *,int *) ;
 int padata_cpu_hash (struct parallel_data*,int ) ;
 struct padata_parallel_queue* per_cpu_ptr (int ,int) ;
 int queue_work (int ,int *) ;
 struct parallel_data* rcu_dereference_bh (int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int padata_do_parallel(struct padata_instance *pinst,
         struct padata_priv *padata, int *cb_cpu)
{
 int i, cpu, cpu_index, target_cpu, err;
 struct padata_parallel_queue *queue;
 struct parallel_data *pd;

 rcu_read_lock_bh();

 pd = rcu_dereference_bh(pinst->pd);

 err = -EINVAL;
 if (!(pinst->flags & PADATA_INIT) || pinst->flags & PADATA_INVALID)
  goto out;

 if (!cpumask_test_cpu(*cb_cpu, pd->cpumask.cbcpu)) {
  if (!cpumask_weight(pd->cpumask.cbcpu))
   goto out;


  cpu_index = *cb_cpu % cpumask_weight(pd->cpumask.cbcpu);

  cpu = cpumask_first(pd->cpumask.cbcpu);
  for (i = 0; i < cpu_index; i++)
   cpu = cpumask_next(cpu, pd->cpumask.cbcpu);

  *cb_cpu = cpu;
 }

 err = -EBUSY;
 if ((pinst->flags & PADATA_RESET))
  goto out;

 if (atomic_read(&pd->refcnt) >= MAX_OBJ_NUM)
  goto out;

 err = 0;
 atomic_inc(&pd->refcnt);
 padata->pd = pd;
 padata->cb_cpu = *cb_cpu;

 padata->seq_nr = atomic_inc_return(&pd->seq_nr);
 target_cpu = padata_cpu_hash(pd, padata->seq_nr);
 padata->cpu = target_cpu;
 queue = per_cpu_ptr(pd->pqueue, target_cpu);

 spin_lock(&queue->parallel.lock);
 list_add_tail(&padata->list, &queue->parallel.list);
 spin_unlock(&queue->parallel.lock);

 queue_work(pinst->parallel_wq, &queue->work);

out:
 rcu_read_unlock_bh();

 return err;
}
