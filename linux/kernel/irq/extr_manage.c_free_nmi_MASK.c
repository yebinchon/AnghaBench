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
struct irq_desc {int istate; scalar_t__ depth; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int IRQS_NMI ; 
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*) ; 
 int FUNC4 (struct irq_desc*) ; 
 struct irq_desc* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

const void *FUNC8(unsigned int irq, void *dev_id)
{
	struct irq_desc *desc = FUNC5(irq);
	unsigned long flags;
	const void *devname;

	if (!desc || FUNC0(!(desc->istate & IRQS_NMI)))
		return NULL;

	if (FUNC0(FUNC4(desc)))
		return NULL;

	/* NMI still enabled */
	if (FUNC0(desc->depth == 0))
		FUNC2(irq);

	FUNC6(&desc->lock, flags);

	FUNC3(desc);
	devname = FUNC1(irq, desc);

	FUNC7(&desc->lock, flags);

	return devname;
}