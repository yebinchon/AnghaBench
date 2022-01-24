#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct irq_desc {TYPE_1__* action; } ;
struct TYPE_2__ {unsigned long flags; } ;

/* Variables and functions */
 unsigned long IRQF_SHARED ; 
 struct irq_desc* FUNC0 (unsigned int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*,unsigned long) ; 
 scalar_t__ FUNC2 (struct irq_desc*) ; 

int FUNC3(unsigned int irq, unsigned long irqflags)
{
	unsigned long flags;
	struct irq_desc *desc = FUNC0(irq, &flags, 0);
	int canrequest = 0;

	if (!desc)
		return 0;

	if (FUNC2(desc)) {
		if (!desc->action ||
		    irqflags & desc->action->flags & IRQF_SHARED)
			canrequest = 1;
	}
	FUNC1(desc, flags);
	return canrequest;
}