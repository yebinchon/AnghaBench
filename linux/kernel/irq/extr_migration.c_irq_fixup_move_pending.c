
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int pending_mask; } ;
struct irq_data {int dummy; } ;


 int cpu_online_mask ;
 scalar_t__ cpumask_any_and (int ,int ) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 int irqd_clr_move_pending (struct irq_data*) ;
 int irqd_is_setaffinity_pending (struct irq_data*) ;
 scalar_t__ nr_cpu_ids ;

bool irq_fixup_move_pending(struct irq_desc *desc, bool force_clear)
{
 struct irq_data *data = irq_desc_get_irq_data(desc);

 if (!irqd_is_setaffinity_pending(data))
  return 0;





 if (cpumask_any_and(desc->pending_mask, cpu_online_mask) >= nr_cpu_ids) {
  irqd_clr_move_pending(data);
  return 0;
 }
 if (force_clear)
  irqd_clr_move_pending(data);
 return 1;
}
