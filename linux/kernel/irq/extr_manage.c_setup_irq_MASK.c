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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int,struct irq_desc*,struct irqaction*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_desc*) ; 
 struct irq_desc* FUNC5 (unsigned int) ; 

int FUNC6(unsigned int irq, struct irqaction *act)
{
	int retval;
	struct irq_desc *desc = FUNC5(irq);

	if (!desc || FUNC0(FUNC4(desc)))
		return -EINVAL;

	retval = FUNC2(&desc->irq_data);
	if (retval < 0)
		return retval;

	retval = FUNC1(irq, desc, act);

	if (retval)
		FUNC3(&desc->irq_data);

	return retval;
}