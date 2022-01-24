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
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(struct irq_desc *desc)
{
	FUNC4(&desc->lock);

	if (!FUNC1(desc))
		goto out_unlock;

	desc->istate &= ~(IRQS_REPLAY | IRQS_WAITING);

	if (FUNC6(!desc->action || FUNC2(&desc->irq_data))) {
		desc->istate |= IRQS_PENDING;
		goto out_unlock;
	}

	FUNC3(desc);
	FUNC0(desc);

out_unlock:
	FUNC5(&desc->lock);
}