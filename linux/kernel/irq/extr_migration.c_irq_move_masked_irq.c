
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {struct irq_chip* chip; } ;
struct irq_desc {int pending_mask; int lock; struct irq_data irq_data; } ;
struct irq_chip {int irq_set_affinity; } ;


 int EBUSY ;
 int WARN_ON (int) ;
 int assert_raw_spin_locked (int *) ;
 int cpu_online_mask ;
 scalar_t__ cpumask_any_and (int ,int ) ;
 int cpumask_clear (int ) ;
 int cpumask_empty (int ) ;
 struct irq_desc* irq_data_to_desc (struct irq_data*) ;
 int irq_do_set_affinity (struct irq_data*,int ,int) ;
 int irqd_clr_move_pending (struct irq_data*) ;
 scalar_t__ irqd_is_per_cpu (struct irq_data*) ;
 int irqd_is_setaffinity_pending (struct irq_data*) ;
 int irqd_set_move_pending (struct irq_data*) ;
 scalar_t__ likely (int) ;
 scalar_t__ nr_cpu_ids ;
 scalar_t__ unlikely (int ) ;

void irq_move_masked_irq(struct irq_data *idata)
{
 struct irq_desc *desc = irq_data_to_desc(idata);
 struct irq_data *data = &desc->irq_data;
 struct irq_chip *chip = data->chip;

 if (likely(!irqd_is_setaffinity_pending(data)))
  return;

 irqd_clr_move_pending(data);




 if (irqd_is_per_cpu(data)) {
  WARN_ON(1);
  return;
 }

 if (unlikely(cpumask_empty(desc->pending_mask)))
  return;

 if (!chip->irq_set_affinity)
  return;

 assert_raw_spin_locked(&desc->lock);
 if (cpumask_any_and(desc->pending_mask, cpu_online_mask) < nr_cpu_ids) {
  int ret;

  ret = irq_do_set_affinity(data, desc->pending_mask, 0);





  if (ret == -EBUSY) {
   irqd_set_move_pending(data);
   return;
  }
 }
 cpumask_clear(desc->pending_mask);
}
