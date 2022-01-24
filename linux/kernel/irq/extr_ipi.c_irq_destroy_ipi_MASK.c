#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct irq_domain {int dummy; } ;
struct irq_data {TYPE_1__* common; struct irq_domain* domain; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {unsigned int ipi_offset; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpumask const*,struct cpumask*) ; 
 unsigned int FUNC3 (struct cpumask const*) ; 
 struct cpumask* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_domain*) ; 
 scalar_t__ FUNC7 (struct irq_domain*) ; 
 struct irq_data* FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(unsigned int irq, const struct cpumask *dest)
{
	struct irq_data *data = FUNC8(irq);
	struct cpumask *ipimask = data ? FUNC4(data) : NULL;
	struct irq_domain *domain;
	unsigned int nr_irqs;

	if (!irq || !data || !ipimask)
		return -EINVAL;

	domain = data->domain;
	if (FUNC0(domain == NULL))
		return -EINVAL;

	if (!FUNC6(domain)) {
		FUNC9("Trying to destroy a non IPI domain!\n");
		return -EINVAL;
	}

	if (FUNC0(!FUNC2(dest, ipimask)))
		/*
		 * Must be destroying a subset of CPUs to which this IPI
		 * was set up to target
		 */
		return -EINVAL;

	if (FUNC7(domain)) {
		irq = irq + FUNC1(dest) - data->common->ipi_offset;
		nr_irqs = FUNC3(dest);
	} else {
		nr_irqs = 1;
	}

	FUNC5(irq, nr_irqs);
	return 0;
}