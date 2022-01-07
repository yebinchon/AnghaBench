
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct irq_chip {int ipi_send_mask; int ipi_send_single; } ;
struct cpumask {int dummy; } ;


 int EINVAL ;
 int cpumask_subset (struct cpumask const*,struct cpumask*) ;
 int cpumask_test_cpu (unsigned int,struct cpumask*) ;
 struct cpumask* irq_data_get_affinity_mask (struct irq_data*) ;
 unsigned int nr_cpu_ids ;

__attribute__((used)) static int ipi_send_verify(struct irq_chip *chip, struct irq_data *data,
      const struct cpumask *dest, unsigned int cpu)
{
 struct cpumask *ipimask = irq_data_get_affinity_mask(data);

 if (!chip || !ipimask)
  return -EINVAL;

 if (!chip->ipi_send_single && !chip->ipi_send_mask)
  return -EINVAL;

 if (cpu >= nr_cpu_ids)
  return -EINVAL;

 if (dest) {
  if (!cpumask_subset(dest, ipimask))
   return -EINVAL;
 } else {
  if (!cpumask_test_cpu(cpu, ipimask))
   return -EINVAL;
 }
 return 0;
}
