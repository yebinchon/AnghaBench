
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_domain {int dummy; } ;
struct irq_data {TYPE_1__* common; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {unsigned int ipi_offset; int affinity; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int IRQ_NO_BALANCING ;
 int NUMA_NO_NODE ;
 int __irq_domain_alloc_irqs (struct irq_domain*,int,unsigned int,int ,void*,int,int *) ;
 int cpu_possible_mask ;
 int cpumask_copy (int ,struct cpumask const*) ;
 unsigned int cpumask_first (struct cpumask const*) ;
 unsigned int cpumask_next (unsigned int,struct cpumask const*) ;
 unsigned int cpumask_next_zero (unsigned int,struct cpumask const*) ;
 int cpumask_subset (struct cpumask const*,int ) ;
 unsigned int cpumask_weight (struct cpumask const*) ;
 int irq_domain_alloc_descs (int,unsigned int,int ,int ,int *) ;
 int irq_domain_is_ipi (struct irq_domain*) ;
 scalar_t__ irq_domain_is_ipi_single (struct irq_domain*) ;
 int irq_free_descs (int,unsigned int) ;
 struct irq_data* irq_get_irq_data (int) ;
 int irq_set_status_flags (int,int ) ;
 unsigned int nr_cpu_ids ;
 int pr_warn (char*) ;

int irq_reserve_ipi(struct irq_domain *domain,
        const struct cpumask *dest)
{
 unsigned int nr_irqs, offset;
 struct irq_data *data;
 int virq, i;

 if (!domain ||!irq_domain_is_ipi(domain)) {
  pr_warn("Reservation on a non IPI domain\n");
  return -EINVAL;
 }

 if (!cpumask_subset(dest, cpu_possible_mask)) {
  pr_warn("Reservation is not in possible_cpu_mask\n");
  return -EINVAL;
 }

 nr_irqs = cpumask_weight(dest);
 if (!nr_irqs) {
  pr_warn("Reservation for empty destination mask\n");
  return -EINVAL;
 }

 if (irq_domain_is_ipi_single(domain)) {






  nr_irqs = 1;
  offset = 0;
 } else {
  unsigned int next;







  offset = cpumask_first(dest);




  next = cpumask_next_zero(offset, dest);
  if (next < nr_cpu_ids)
   next = cpumask_next(next, dest);
  if (next < nr_cpu_ids) {
   pr_warn("Destination mask has holes\n");
   return -EINVAL;
  }
 }

 virq = irq_domain_alloc_descs(-1, nr_irqs, 0, NUMA_NO_NODE, ((void*)0));
 if (virq <= 0) {
  pr_warn("Can't reserve IPI, failed to alloc descs\n");
  return -ENOMEM;
 }

 virq = __irq_domain_alloc_irqs(domain, virq, nr_irqs, NUMA_NO_NODE,
           (void *) dest, 1, ((void*)0));

 if (virq <= 0) {
  pr_warn("Can't reserve IPI, failed to alloc hw irqs\n");
  goto free_descs;
 }

 for (i = 0; i < nr_irqs; i++) {
  data = irq_get_irq_data(virq + i);
  cpumask_copy(data->common->affinity, dest);
  data->common->ipi_offset = offset;
  irq_set_status_flags(virq + i, IRQ_NO_BALANCING);
 }
 return virq;

free_descs:
 irq_free_descs(virq, nr_irqs);
 return -EBUSY;
}
