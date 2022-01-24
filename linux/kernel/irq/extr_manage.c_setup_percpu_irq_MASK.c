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
struct irqaction {int dummy; } ;
struct irq_desc {int /*<<< orphan*/  irq_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned int,struct irq_desc*,struct irqaction*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*) ; 
 struct irq_desc* FUNC4 (unsigned int) ; 

int FUNC5(unsigned int irq, struct irqaction *act)
{
	struct irq_desc *desc = FUNC4(irq);
	int retval;

	if (!desc || !FUNC3(desc))
		return -EINVAL;

	retval = FUNC1(&desc->irq_data);
	if (retval < 0)
		return retval;

	retval = FUNC0(irq, desc, act);

	if (retval)
		FUNC2(&desc->irq_data);

	return retval;
}