
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_data {int irq; } ;
struct irq_chip {int (* irq_unmask ) (struct irq_data*) ;int (* irq_mask ) (struct irq_data*) ;int irq_set_affinity; } ;
struct cpumask {int dummy; } ;


 struct cpumask* cpu_online_mask ;
 scalar_t__ cpumask_any_and (struct cpumask const*,struct cpumask*) ;
 int irq_can_move_pcntxt (struct irq_data*) ;
 struct cpumask* irq_data_get_affinity_mask (struct irq_data*) ;
 struct irq_chip* irq_data_get_irq_chip (struct irq_data*) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 struct cpumask* irq_desc_get_pending_mask (struct irq_desc*) ;
 int irq_do_set_affinity (struct irq_data*,struct cpumask const*,int) ;
 scalar_t__ irq_fixup_move_pending (struct irq_desc*,int) ;
 int irq_force_complete_move (struct irq_desc*) ;
 int irq_needs_fixup (struct irq_data*) ;
 int irq_shutdown_and_deactivate (struct irq_desc*) ;
 scalar_t__ irqd_affinity_is_managed (struct irq_data*) ;
 int irqd_irq_masked (struct irq_data*) ;
 scalar_t__ irqd_is_per_cpu (struct irq_data*) ;
 int irqd_is_started (struct irq_data*) ;
 int irqd_set_managed_shutdown (struct irq_data*) ;
 scalar_t__ nr_cpu_ids ;
 int pr_debug (char*,int ) ;
 int pr_warn_ratelimited (char*,int ,int) ;
 int stub1 (struct irq_data*) ;
 int stub2 (struct irq_data*) ;

__attribute__((used)) static bool migrate_one_irq(struct irq_desc *desc)
{
 struct irq_data *d = irq_desc_get_irq_data(desc);
 struct irq_chip *chip = irq_data_get_irq_chip(d);
 bool maskchip = !irq_can_move_pcntxt(d) && !irqd_irq_masked(d);
 const struct cpumask *affinity;
 bool brokeaff = 0;
 int err;






 if (!chip || !chip->irq_set_affinity) {
  pr_debug("IRQ %u: Unable to migrate away\n", d->irq);
  return 0;
 }
 if (irqd_is_per_cpu(d) || !irqd_is_started(d) || !irq_needs_fixup(d)) {




  irq_fixup_move_pending(desc, 0);
  return 0;
 }







 irq_force_complete_move(desc);







 if (irq_fixup_move_pending(desc, 1))
  affinity = irq_desc_get_pending_mask(desc);
 else
  affinity = irq_data_get_affinity_mask(d);


 if (maskchip && chip->irq_mask)
  chip->irq_mask(d);

 if (cpumask_any_and(affinity, cpu_online_mask) >= nr_cpu_ids) {




  if (irqd_affinity_is_managed(d)) {
   irqd_set_managed_shutdown(d);
   irq_shutdown_and_deactivate(desc);
   return 0;
  }
  affinity = cpu_online_mask;
  brokeaff = 1;
 }






 err = irq_do_set_affinity(d, affinity, 0);
 if (err) {
  pr_warn_ratelimited("IRQ%u: set affinity failed(%d).\n",
        d->irq, err);
  brokeaff = 0;
 }

 if (maskchip && chip->irq_unmask)
  chip->irq_unmask(d);

 return brokeaff;
}
