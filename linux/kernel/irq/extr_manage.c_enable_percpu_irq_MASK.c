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
struct irq_desc {int /*<<< orphan*/  irq_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_GET_DESC_CHECK_PERCPU ; 
 unsigned int IRQ_TYPE_NONE ; 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int FUNC1 (struct irq_desc*,unsigned int) ; 
 struct irq_desc* FUNC2 (unsigned int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_desc*,unsigned long) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 () ; 

void FUNC7(unsigned int irq, unsigned int type)
{
	unsigned int cpu = FUNC6();
	unsigned long flags;
	struct irq_desc *desc = FUNC2(irq, &flags, IRQ_GET_DESC_CHECK_PERCPU);

	if (!desc)
		return;

	/*
	 * If the trigger type is not specified by the caller, then
	 * use the default for this interrupt.
	 */
	type &= IRQ_TYPE_SENSE_MASK;
	if (type == IRQ_TYPE_NONE)
		type = FUNC5(&desc->irq_data);

	if (type != IRQ_TYPE_NONE) {
		int ret;

		ret = FUNC1(desc, type);

		if (ret) {
			FUNC0(1, "failed to set type for IRQ%d\n", irq);
			goto out;
		}
	}

	FUNC3(desc, cpu);
out:
	FUNC4(desc, flags);
}