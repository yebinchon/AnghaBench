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
struct irq_desc {int /*<<< orphan*/  irq_data; } ;

/* Variables and functions */
 unsigned int IRQD_IRQ_INPROGRESS ; 
 unsigned int IRQD_WAKEUP_ARMED ; 
 int FUNC0 (struct irq_desc*) ; 
 scalar_t__ FUNC1 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static bool FUNC3(struct irq_desc *desc)
{
	unsigned int mask = IRQD_IRQ_INPROGRESS | IRQD_WAKEUP_ARMED;

	/*
	 * If the interrupt is not in progress and is not an armed
	 * wakeup interrupt, proceed.
	 */
	if (!FUNC2(&desc->irq_data, mask))
		return true;

	/*
	 * If the interrupt is an armed wakeup source, mark it pending
	 * and suspended, disable it and notify the pm core about the
	 * event.
	 */
	if (FUNC1(desc))
		return false;

	/*
	 * Handle a potential concurrent poll on a different core.
	 */
	return FUNC0(desc);
}