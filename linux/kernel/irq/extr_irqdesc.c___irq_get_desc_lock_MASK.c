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
struct irq_desc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int _IRQ_DESC_CHECK ; 
 unsigned int _IRQ_DESC_PERCPU ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 scalar_t__ FUNC1 (struct irq_desc*) ; 
 struct irq_desc* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

struct irq_desc *
FUNC4(unsigned int irq, unsigned long *flags, bool bus,
		    unsigned int check)
{
	struct irq_desc *desc = FUNC2(irq);

	if (desc) {
		if (check & _IRQ_DESC_CHECK) {
			if ((check & _IRQ_DESC_PERCPU) &&
			    !FUNC1(desc))
				return NULL;

			if (!(check & _IRQ_DESC_PERCPU) &&
			    FUNC1(desc))
				return NULL;
		}

		if (bus)
			FUNC0(desc);
		FUNC3(&desc->lock, *flags);
	}
	return desc;
}