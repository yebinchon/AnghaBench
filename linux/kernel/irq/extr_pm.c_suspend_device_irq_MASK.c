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
struct irq_desc {int /*<<< orphan*/  istate; int /*<<< orphan*/  irq_data; scalar_t__ no_suspend_depth; int /*<<< orphan*/  action; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int IRQCHIP_MASK_ON_SUSPEND ; 
 int /*<<< orphan*/  IRQD_WAKEUP_ARMED ; 
 int /*<<< orphan*/  IRQS_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 TYPE_1__* FUNC1 (struct irq_desc*) ; 
 scalar_t__ FUNC2 (struct irq_desc*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_desc*) ; 

__attribute__((used)) static bool FUNC6(struct irq_desc *desc)
{
	if (!desc->action || FUNC2(desc) ||
	    desc->no_suspend_depth)
		return false;

	if (FUNC3(&desc->irq_data)) {
		FUNC4(&desc->irq_data, IRQD_WAKEUP_ARMED);
		/*
		 * We return true here to force the caller to issue
		 * synchronize_irq(). We need to make sure that the
		 * IRQD_WAKEUP_ARMED is visible before we return from
		 * suspend_device_irqs().
		 */
		return true;
	}

	desc->istate |= IRQS_SUSPENDED;
	FUNC0(desc);

	/*
	 * Hardware which has no wakeup source configuration facility
	 * requires that the non wakeup interrupts are masked at the
	 * chip level. The chip implementation indicates that with
	 * IRQCHIP_MASK_ON_SUSPEND.
	 */
	if (FUNC1(desc)->flags & IRQCHIP_MASK_ON_SUSPEND)
		FUNC5(desc);
	return true;
}