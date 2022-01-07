
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct cpudl {int lock; TYPE_1__* elements; int free_cpus; int size; } ;
struct TYPE_2__ {int idx; int cpu; void* dl; } ;


 int IDX_INVALID ;
 int WARN_ON (int) ;
 int cpu_present (int) ;
 int cpudl_heapify (struct cpudl*,int) ;
 int cpudl_heapify_up (struct cpudl*,int) ;
 int cpumask_clear_cpu (int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void cpudl_set(struct cpudl *cp, int cpu, u64 dl)
{
 int old_idx;
 unsigned long flags;

 WARN_ON(!cpu_present(cpu));

 raw_spin_lock_irqsave(&cp->lock, flags);

 old_idx = cp->elements[cpu].idx;
 if (old_idx == IDX_INVALID) {
  int new_idx = cp->size++;

  cp->elements[new_idx].dl = dl;
  cp->elements[new_idx].cpu = cpu;
  cp->elements[cpu].idx = new_idx;
  cpudl_heapify_up(cp, new_idx);
  cpumask_clear_cpu(cpu, cp->free_cpus);
 } else {
  cp->elements[old_idx].dl = dl;
  cpudl_heapify(cp, old_idx);
 }

 raw_spin_unlock_irqrestore(&cp->lock, flags);
}
