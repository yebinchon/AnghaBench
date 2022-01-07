
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int action; } ;
struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;


 int IRQ_RESEND ;
 int IRQ_START_COND ;
 int cpumask_test_cpu (unsigned int,struct cpumask const*) ;
 struct cpumask* irq_data_get_affinity_mask (struct irq_data*) ;
 int irq_data_get_irq_chip (struct irq_data*) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 int irq_set_affinity_locked (struct irq_data*,struct cpumask const*,int) ;
 int irq_startup (struct irq_desc*,int ,int ) ;
 int irqd_affinity_is_managed (struct irq_data*) ;
 scalar_t__ irqd_is_managed_and_shutdown (struct irq_data*) ;
 int irqd_is_single_target (struct irq_data*) ;

__attribute__((used)) static void irq_restore_affinity_of_irq(struct irq_desc *desc, unsigned int cpu)
{
 struct irq_data *data = irq_desc_get_irq_data(desc);
 const struct cpumask *affinity = irq_data_get_affinity_mask(data);

 if (!irqd_affinity_is_managed(data) || !desc->action ||
     !irq_data_get_irq_chip(data) || !cpumask_test_cpu(cpu, affinity))
  return;

 if (irqd_is_managed_and_shutdown(data)) {
  irq_startup(desc, IRQ_RESEND, IRQ_START_COND);
  return;
 }






 if (!irqd_is_single_target(data))
  irq_set_affinity_locked(data, affinity, 0);
}
