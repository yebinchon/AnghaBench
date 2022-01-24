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
struct irqaction {int flags; } ;
struct irq_desc {int istate; int /*<<< orphan*/  lock; struct irqaction* action; int /*<<< orphan*/  irq_data; } ;
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 int IRQF_SHARED ; 
 int IRQS_PENDING ; 
 int IRQS_POLL_INPROGRESS ; 
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 int __IRQF_TIMER ; 
 scalar_t__ FUNC0 (struct irq_desc*) ; 
 scalar_t__ FUNC1 (struct irq_desc*) ; 
 scalar_t__ FUNC2 (struct irq_desc*) ; 
 scalar_t__ FUNC3 (struct irq_desc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct irq_desc *desc, bool force)
{
	irqreturn_t ret = IRQ_NONE;
	struct irqaction *action;

	FUNC6(&desc->lock);

	/*
	 * PER_CPU, nested thread interrupts and interrupts explicitly
	 * marked polled are excluded from polling.
	 */
	if (FUNC2(desc) ||
	    FUNC1(desc) ||
	    FUNC3(desc))
		goto out;

	/*
	 * Do not poll disabled interrupts unless the spurious
	 * disabled poller asks explicitly.
	 */
	if (FUNC4(&desc->irq_data) && !force)
		goto out;

	/*
	 * All handlers must agree on IRQF_SHARED, so we test just the
	 * first.
	 */
	action = desc->action;
	if (!action || !(action->flags & IRQF_SHARED) ||
	    (action->flags & __IRQF_TIMER))
		goto out;

	/* Already running on another processor */
	if (FUNC5(&desc->irq_data)) {
		/*
		 * Already running: If it is shared get the other
		 * CPU to go looking for our mystery interrupt too
		 */
		desc->istate |= IRQS_PENDING;
		goto out;
	}

	/* Mark it poll in progress */
	desc->istate |= IRQS_POLL_INPROGRESS;
	do {
		if (FUNC0(desc) == IRQ_HANDLED)
			ret = IRQ_HANDLED;
		/* Make sure that there is still a valid action */
		action = desc->action;
	} while ((desc->istate & IRQS_PENDING) && action);
	desc->istate &= ~IRQS_POLL_INPROGRESS;
out:
	FUNC7(&desc->lock);
	return ret == IRQ_HANDLED;
}