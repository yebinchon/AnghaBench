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
 int IRQS_PENDING ; 
 int IRQS_REPLAY ; 
 int IRQS_WAITING ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(struct irq_desc *desc)
{
	FUNC6(&desc->lock);
	FUNC5(desc);

	if (!FUNC2(desc))
		goto out_unlock;

	desc->istate &= ~(IRQS_REPLAY | IRQS_WAITING);

	/*
	 * If its disabled or no action available
	 * keep it masked and get out of here
	 */
	if (FUNC8(!desc->action || FUNC3(&desc->irq_data))) {
		desc->istate |= IRQS_PENDING;
		goto out_unlock;
	}

	FUNC4(desc);
	FUNC1(desc);

	FUNC0(desc);

out_unlock:
	FUNC7(&desc->lock);
}