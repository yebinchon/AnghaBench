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
struct irq_desc {int /*<<< orphan*/  percpu_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_GET_DESC_CHECK_PERCPU ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 struct irq_desc* FUNC1 (unsigned int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*,unsigned long) ; 
 unsigned int FUNC3 () ; 

bool FUNC4(unsigned int irq)
{
	unsigned int cpu = FUNC3();
	struct irq_desc *desc;
	unsigned long flags;
	bool is_enabled;

	desc = FUNC1(irq, &flags, IRQ_GET_DESC_CHECK_PERCPU);
	if (!desc)
		return false;

	is_enabled = FUNC0(cpu, desc->percpu_enabled);
	FUNC2(desc, flags);

	return is_enabled;
}