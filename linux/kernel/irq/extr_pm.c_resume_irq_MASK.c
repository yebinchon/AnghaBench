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
struct irq_desc {int istate; int /*<<< orphan*/  depth; int /*<<< orphan*/  force_resume_depth; int /*<<< orphan*/  irq_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQD_WAKEUP_ARMED ; 
 int IRQS_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct irq_desc *desc)
{
	FUNC3(&desc->irq_data, IRQD_WAKEUP_ARMED);

	if (desc->istate & IRQS_SUSPENDED)
		goto resume;

	/* Force resume the interrupt? */
	if (!desc->force_resume_depth)
		return;

	/* Pretend that it got disabled ! */
	desc->depth++;
	FUNC1(desc);
	FUNC2(desc);
resume:
	desc->istate &= ~IRQS_SUSPENDED;
	FUNC0(desc);
}