#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* chip; } ;
struct irq_desc {int istate; int /*<<< orphan*/  lock; TYPE_2__ irq_data; int /*<<< orphan*/  action; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* irq_ack ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int IRQS_PENDING ; 
 int IRQS_REPLAY ; 
 int IRQS_WAITING ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct irq_desc*) ; 

void FUNC12(struct irq_desc *desc)
{
	FUNC7(&desc->lock);

	desc->istate &= ~(IRQS_REPLAY | IRQS_WAITING);

	if (!FUNC1(desc)) {
		desc->istate |= IRQS_PENDING;
		FUNC5(desc);
		goto out_unlock;
	}

	/*
	 * If its disabled or no action available then mask it and get
	 * out of here.
	 */
	if (FUNC2(&desc->irq_data) || !desc->action) {
		desc->istate |= IRQS_PENDING;
		FUNC5(desc);
		goto out_unlock;
	}

	FUNC4(desc);

	/* Start handling the irq */
	desc->irq_data.chip->irq_ack(&desc->irq_data);

	do {
		if (FUNC10(!desc->action)) {
			FUNC6(desc);
			goto out_unlock;
		}

		/*
		 * When another irq arrived while we were handling
		 * one, we could have masked the irq.
		 * Renable it, if it was not disabled in meantime.
		 */
		if (FUNC10(desc->istate & IRQS_PENDING)) {
			if (!FUNC2(&desc->irq_data) &&
			    FUNC3(&desc->irq_data))
				FUNC11(desc);
		}

		FUNC0(desc);

	} while ((desc->istate & IRQS_PENDING) &&
		 !FUNC2(&desc->irq_data));

out_unlock:
	FUNC8(&desc->lock);
}