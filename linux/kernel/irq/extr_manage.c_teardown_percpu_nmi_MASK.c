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
struct irq_desc {int istate; } ;

/* Variables and functions */
 int IRQS_NMI ; 
 int /*<<< orphan*/  IRQ_GET_DESC_CHECK_PERCPU ; 
 scalar_t__ FUNC0 (int) ; 
 struct irq_desc* FUNC1 (unsigned int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*,unsigned long) ; 
 int FUNC4 () ; 

void FUNC5(unsigned int irq)
{
	unsigned long flags;
	struct irq_desc *desc;

	FUNC0(FUNC4());

	desc = FUNC1(irq, &flags,
				 IRQ_GET_DESC_CHECK_PERCPU);
	if (!desc)
		return;

	if (FUNC0(!(desc->istate & IRQS_NMI)))
		goto out;

	FUNC2(desc);
out:
	FUNC3(desc, flags);
}