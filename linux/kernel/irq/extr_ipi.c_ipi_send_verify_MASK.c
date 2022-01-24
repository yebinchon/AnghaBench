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
struct irq_data {int dummy; } ;
struct irq_chip {int /*<<< orphan*/  ipi_send_mask; int /*<<< orphan*/  ipi_send_single; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cpumask const*,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct cpumask*) ; 
 struct cpumask* FUNC2 (struct irq_data*) ; 
 unsigned int nr_cpu_ids ; 

__attribute__((used)) static int FUNC3(struct irq_chip *chip, struct irq_data *data,
			   const struct cpumask *dest, unsigned int cpu)
{
	struct cpumask *ipimask = FUNC2(data);

	if (!chip || !ipimask)
		return -EINVAL;

	if (!chip->ipi_send_single && !chip->ipi_send_mask)
		return -EINVAL;

	if (cpu >= nr_cpu_ids)
		return -EINVAL;

	if (dest) {
		if (!FUNC0(dest, ipimask))
			return -EINVAL;
	} else {
		if (!FUNC1(cpu, ipimask))
			return -EINVAL;
	}
	return 0;
}