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
struct irq_desc {int istate; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  action; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQD_IRQ_INPROGRESS ; 
 int IRQS_PENDING ; 
 int IRQS_REPLAY ; 
 int IRQS_WAITING ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct irq_desc *desc)
{
	unsigned int flags = 0;

	FUNC5(&desc->lock);

	if (!FUNC1(desc))
		goto out_unlock;

	desc->istate &= ~(IRQS_REPLAY | IRQS_WAITING);

	if (FUNC7(!desc->action || FUNC3(&desc->irq_data))) {
		desc->istate |= IRQS_PENDING;
		goto out_unlock;
	}

	desc->istate &= ~IRQS_PENDING;
	FUNC4(&desc->irq_data, IRQD_IRQ_INPROGRESS);
	FUNC6(&desc->lock);

	FUNC0(desc, &flags);

	FUNC5(&desc->lock);
	FUNC2(&desc->irq_data, IRQD_IRQ_INPROGRESS);

out_unlock:
	FUNC6(&desc->lock);
}