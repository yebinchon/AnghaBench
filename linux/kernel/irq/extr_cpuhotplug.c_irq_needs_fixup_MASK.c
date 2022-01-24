#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct irq_data {int /*<<< orphan*/  irq; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 scalar_t__ FUNC0 (struct cpumask const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cpumask const*,unsigned int) ; 
 scalar_t__ FUNC2 (struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpumask const*) ; 
 int FUNC4 (unsigned int,struct cpumask const*) ; 
 struct cpumask* FUNC5 (struct irq_data*) ; 
 struct cpumask* FUNC6 (struct irq_data*) ; 
 scalar_t__ nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC8 () ; 

__attribute__((used)) static inline bool FUNC9(struct irq_data *d)
{
	const struct cpumask *m = FUNC6(d);
	unsigned int cpu = FUNC8();

#ifdef CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK
	/*
	 * The cpumask_empty() check is a workaround for interrupt chips,
	 * which do not implement effective affinity, but the architecture has
	 * enabled the config switch. Use the general affinity mask instead.
	 */
	if (cpumask_empty(m))
		m = irq_data_get_affinity_mask(d);

	/*
	 * Sanity check. If the mask is not empty when excluding the outgoing
	 * CPU then it must contain at least one online CPU. The outgoing CPU
	 * has been removed from the online mask already.
	 */
	if (cpumask_any_but(m, cpu) < nr_cpu_ids &&
	    cpumask_any_and(m, cpu_online_mask) >= nr_cpu_ids) {
		/*
		 * If this happens then there was a missed IRQ fixup at some
		 * point. Warn about it and enforce fixup.
		 */
		pr_warn("Eff. affinity %*pbl of IRQ %u contains only offline CPUs after offlining CPU %u\n",
			cpumask_pr_args(m), d->irq, cpu);
		return true;
	}
#endif
	return FUNC4(cpu, m);
}