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
struct irq_desc {int dummy; } ;
struct irq_data {int dummy; } ;
struct irq_chip {int dummy; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct irq_desc*,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_data*,struct cpumask const*,int /*<<< orphan*/ ) ; 
 struct irq_chip* FUNC3 (struct irq_data*) ; 
 struct irq_data* FUNC4 (struct irq_desc*) ; 
 struct irq_desc* FUNC5 (unsigned int) ; 

int FUNC6(unsigned int virq, const struct cpumask *dest)
{
	struct irq_desc *desc = FUNC5(virq);
	struct irq_data *data = desc ? FUNC4(desc) : NULL;
	struct irq_chip *chip = data ? FUNC3(data) : NULL;

	if (FUNC0(FUNC2(chip, data, dest, 0)))
		return -EINVAL;

	return FUNC1(desc, dest);
}