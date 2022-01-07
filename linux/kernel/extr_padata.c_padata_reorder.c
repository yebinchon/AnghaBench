
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parallel_data {int cpu; int reorder_work; int pqueue; int lock; int squeue; struct padata_instance* pinst; } ;
struct TYPE_3__ {int lock; int list; } ;
struct padata_serial_queue {int work; TYPE_1__ serial; } ;
struct padata_priv {int cb_cpu; int list; } ;
struct TYPE_4__ {int list; } ;
struct padata_parallel_queue {TYPE_2__ reorder; } ;
struct padata_instance {int serial_wq; } ;


 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 struct padata_priv* padata_find_next (struct parallel_data*,int) ;
 void* per_cpu_ptr (int ,int) ;
 int queue_work (int ,int *) ;
 int queue_work_on (int,int ,int *) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_trylock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void padata_reorder(struct parallel_data *pd)
{
 int cb_cpu;
 struct padata_priv *padata;
 struct padata_serial_queue *squeue;
 struct padata_instance *pinst = pd->pinst;
 struct padata_parallel_queue *next_queue;
 if (!spin_trylock_bh(&pd->lock))
  return;

 while (1) {
  padata = padata_find_next(pd, 1);






  if (!padata)
   break;

  cb_cpu = padata->cb_cpu;
  squeue = per_cpu_ptr(pd->squeue, cb_cpu);

  spin_lock(&squeue->serial.lock);
  list_add_tail(&padata->list, &squeue->serial.list);
  spin_unlock(&squeue->serial.lock);

  queue_work_on(cb_cpu, pinst->serial_wq, &squeue->work);
 }

 spin_unlock_bh(&pd->lock);
 smp_mb();

 next_queue = per_cpu_ptr(pd->pqueue, pd->cpu);
 if (!list_empty(&next_queue->reorder.list) &&
     padata_find_next(pd, 0))
  queue_work(pinst->serial_wq, &pd->reorder_work);
}
