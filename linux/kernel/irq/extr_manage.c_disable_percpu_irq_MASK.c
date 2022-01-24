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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_GET_DESC_CHECK_PERCPU ; 
 struct irq_desc* FUNC0 (unsigned int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*,unsigned long) ; 
 unsigned int FUNC3 () ; 

void FUNC4(unsigned int irq)
{
	unsigned int cpu = FUNC3();
	unsigned long flags;
	struct irq_desc *desc = FUNC0(irq, &flags, IRQ_GET_DESC_CHECK_PERCPU);

	if (!desc)
		return;

	FUNC1(desc, cpu);
	FUNC2(desc, flags);
}