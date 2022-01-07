
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct cpumask {int dummy; } ;


 int cpu_online_mask ;
 scalar_t__ cpumask_any_and (struct cpumask const*,int ) ;
 scalar_t__ cpumask_any_but (struct cpumask const*,unsigned int) ;
 scalar_t__ cpumask_empty (struct cpumask const*) ;
 int cpumask_pr_args (struct cpumask const*) ;
 int cpumask_test_cpu (unsigned int,struct cpumask const*) ;
 struct cpumask* irq_data_get_affinity_mask (struct irq_data*) ;
 struct cpumask* irq_data_get_effective_affinity_mask (struct irq_data*) ;
 scalar_t__ nr_cpu_ids ;
 int pr_warn (char*,int ,int ,unsigned int) ;
 unsigned int smp_processor_id () ;

__attribute__((used)) static inline bool irq_needs_fixup(struct irq_data *d)
{
 const struct cpumask *m = irq_data_get_effective_affinity_mask(d);
 unsigned int cpu = smp_processor_id();
 return cpumask_test_cpu(cpu, m);
}
