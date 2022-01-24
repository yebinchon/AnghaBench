#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct irq_chip* chip; } ;
struct irq_desc {int istate; int /*<<< orphan*/  lock; TYPE_1__ irq_data; int /*<<< orphan*/  action; } ;
struct irq_chip {int flags; int /*<<< orphan*/  (* irq_eoi ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int IRQCHIP_EOI_IF_HANDLED ; 
 int IRQS_ONESHOT ; 
 int IRQS_PENDING ; 
 int IRQS_REPLAY ; 
 int IRQS_WAITING ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*,struct irq_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11(struct irq_desc *desc)
{
	struct irq_chip *chip = desc->irq_data.chip;

	FUNC7(&desc->lock);

	if (!FUNC2(desc))
		goto out;

	desc->istate &= ~(IRQS_REPLAY | IRQS_WAITING);

	/*
	 * If its disabled or no action available
	 * then mask it and get out of here:
	 */
	if (FUNC10(!desc->action || FUNC3(&desc->irq_data))) {
		desc->istate |= IRQS_PENDING;
		FUNC5(desc);
		goto out;
	}

	FUNC4(desc);
	if (desc->istate & IRQS_ONESHOT)
		FUNC5(desc);

	FUNC6(desc);
	FUNC1(desc);

	FUNC0(desc, chip);

	FUNC8(&desc->lock);
	return;
out:
	if (!(chip->flags & IRQCHIP_EOI_IF_HANDLED))
		chip->irq_eoi(&desc->irq_data);
	FUNC8(&desc->lock);
}