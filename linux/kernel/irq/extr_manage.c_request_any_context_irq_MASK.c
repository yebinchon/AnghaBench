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
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 int IRQC_IS_HARDIRQ ; 
 int IRQC_IS_NESTED ; 
 unsigned int IRQ_NOTCONNECTED ; 
 scalar_t__ FUNC0 (struct irq_desc*) ; 
 struct irq_desc* FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ,unsigned long,char const*,void*) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,char const*,void*) ; 

int FUNC4(unsigned int irq, irq_handler_t handler,
			    unsigned long flags, const char *name, void *dev_id)
{
	struct irq_desc *desc;
	int ret;

	if (irq == IRQ_NOTCONNECTED)
		return -ENOTCONN;

	desc = FUNC1(irq);
	if (!desc)
		return -EINVAL;

	if (FUNC0(desc)) {
		ret = FUNC3(irq, NULL, handler,
					   flags, name, dev_id);
		return !ret ? IRQC_IS_NESTED : ret;
	}

	ret = FUNC2(irq, handler, flags, name, dev_id);
	return !ret ? IRQC_IS_HARDIRQ : ret;
}