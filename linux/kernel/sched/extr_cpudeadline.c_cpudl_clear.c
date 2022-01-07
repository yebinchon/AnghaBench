
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpudl {int size; int lock; int free_cpus; TYPE_1__* elements; } ;
struct TYPE_2__ {int idx; int cpu; int dl; } ;


 int IDX_INVALID ;
 int WARN_ON (int) ;
 int cpu_present (int) ;
 int cpudl_heapify (struct cpudl*,int) ;
 int cpumask_set_cpu (int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void cpudl_clear(struct cpudl *cp, int cpu)
{
 int old_idx, new_cpu;
 unsigned long flags;

 WARN_ON(!cpu_present(cpu));

 raw_spin_lock_irqsave(&cp->lock, flags);

 old_idx = cp->elements[cpu].idx;
 if (old_idx == IDX_INVALID) {





 } else {
  new_cpu = cp->elements[cp->size - 1].cpu;
  cp->elements[old_idx].dl = cp->elements[cp->size - 1].dl;
  cp->elements[old_idx].cpu = new_cpu;
  cp->size--;
  cp->elements[new_cpu].idx = old_idx;
  cp->elements[cpu].idx = IDX_INVALID;
  cpudl_heapify(cp, old_idx);

  cpumask_set_cpu(cpu, cp->free_cpus);
 }
 raw_spin_unlock_irqrestore(&cp->lock, flags);
}
