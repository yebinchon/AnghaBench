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
struct irqaction {unsigned long flags; char const* name; void* dev_id; scalar_t__ handler; } ;
struct irq_desc {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  lock; int /*<<< orphan*/  istate; } ;
typedef  scalar_t__ irq_handler_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IRQF_COND_SUSPEND ; 
 unsigned long IRQF_IRQPOLL ; 
 unsigned long IRQF_NOBALANCING ; 
 unsigned long IRQF_NO_THREAD ; 
 unsigned long IRQF_PERCPU ; 
 unsigned long IRQF_SHARED ; 
 int /*<<< orphan*/  IRQS_NMI ; 
 unsigned int IRQ_NOTCONNECTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 int FUNC2 (unsigned int,struct irq_desc*,struct irqaction*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct irq_desc*) ; 
 scalar_t__ FUNC6 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC9 (struct irq_desc*) ; 
 struct irq_desc* FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct irqaction*) ; 
 struct irqaction* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC15(unsigned int irq, irq_handler_t handler,
		unsigned long irqflags, const char *name, void *dev_id)
{
	struct irqaction *action;
	struct irq_desc *desc;
	unsigned long flags;
	int retval;

	if (irq == IRQ_NOTCONNECTED)
		return -ENOTCONN;

	/* NMI cannot be shared, used for Polling */
	if (irqflags & (IRQF_SHARED | IRQF_COND_SUSPEND | IRQF_IRQPOLL))
		return -EINVAL;

	if (!(irqflags & IRQF_PERCPU))
		return -EINVAL;

	if (!handler)
		return -EINVAL;

	desc = FUNC10(irq);

	if (!desc || FUNC6(desc) ||
	    !FUNC7(desc) ||
	    FUNC0(FUNC8(desc)) ||
	    !FUNC9(desc))
		return -EINVAL;

	action = FUNC12(sizeof(struct irqaction), GFP_KERNEL);
	if (!action)
		return -ENOMEM;

	action->handler = handler;
	action->flags = irqflags | IRQF_NO_THREAD | IRQF_NOBALANCING;
	action->name = name;
	action->dev_id = dev_id;

	retval = FUNC3(&desc->irq_data);
	if (retval < 0)
		goto err_out;

	retval = FUNC2(irq, desc, action);
	if (retval)
		goto err_irq_setup;

	FUNC13(&desc->lock, flags);

	/* Setup NMI state */
	desc->istate |= IRQS_NMI;
	retval = FUNC5(desc);
	if (retval) {
		FUNC1(irq, desc);
		FUNC14(&desc->lock, flags);
		return -EINVAL;
	}

	FUNC14(&desc->lock, flags);

	return 0;

err_irq_setup:
	FUNC4(&desc->irq_data);
err_out:
	FUNC11(action);

	return retval;
}