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
struct irq_data {TYPE_1__* common; int /*<<< orphan*/  domain; } ;
struct cpumask {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_2__ {unsigned int ipi_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_HWIRQ ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct cpumask*) ; 
 struct cpumask* FUNC1 (struct irq_data*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct irq_data* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 
 unsigned int nr_cpu_ids ; 

irq_hw_number_t FUNC5(unsigned int irq, unsigned int cpu)
{
	struct irq_data *data = FUNC3(irq);
	struct cpumask *ipimask = data ? FUNC1(data) : NULL;

	if (!data || !ipimask || cpu >= nr_cpu_ids)
		return INVALID_HWIRQ;

	if (!FUNC0(cpu, ipimask))
		return INVALID_HWIRQ;

	/*
	 * Get the real hardware irq number if the underlying implementation
	 * uses a separate irq per cpu. If the underlying implementation uses
	 * a single hardware irq for all cpus then the IPI send mechanism
	 * needs to take care of the cpu destinations.
	 */
	if (FUNC2(data->domain))
		data = FUNC3(irq + cpu - data->common->ipi_offset);

	return data ? FUNC4(data) : INVALID_HWIRQ;
}