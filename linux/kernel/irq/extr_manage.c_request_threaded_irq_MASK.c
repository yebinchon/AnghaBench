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
struct irqaction {unsigned long flags; char const* name; struct irqaction* secondary; void* dev_id; int /*<<< orphan*/  (* thread_fn ) (unsigned int,void*) ;int /*<<< orphan*/  (* handler ) (unsigned int,void*) ;} ;
struct irq_desc {int /*<<< orphan*/  irq_data; } ;
typedef  int /*<<< orphan*/  (* irq_handler_t ) (unsigned int,void*) ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IRQF_COND_SUSPEND ; 
 unsigned long IRQF_NO_SUSPEND ; 
 unsigned long IRQF_SHARED ; 
 unsigned int IRQ_NOTCONNECTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int,struct irq_desc*,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_desc*) ; 
 struct irq_desc* FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct irqaction*) ; 
 struct irqaction* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long) ; 

int FUNC14(unsigned int irq, irq_handler_t handler,
			 irq_handler_t thread_fn, unsigned long irqflags,
			 const char *devname, void *dev_id)
{
	struct irqaction *action;
	struct irq_desc *desc;
	int retval;

	if (irq == IRQ_NOTCONNECTED)
		return -ENOTCONN;

	/*
	 * Sanity-check: shared interrupts must pass in a real dev-ID,
	 * otherwise we'll have trouble later trying to figure out
	 * which interrupt is which (messes up the interrupt freeing
	 * logic etc).
	 *
	 * Also IRQF_COND_SUSPEND only makes sense for shared interrupts and
	 * it cannot be set along with IRQF_NO_SUSPEND.
	 */
	if (((irqflags & IRQF_SHARED) && !dev_id) ||
	    (!(irqflags & IRQF_SHARED) && (irqflags & IRQF_COND_SUSPEND)) ||
	    ((irqflags & IRQF_NO_SUSPEND) && (irqflags & IRQF_COND_SUSPEND)))
		return -EINVAL;

	desc = FUNC9(irq);
	if (!desc)
		return -EINVAL;

	if (!FUNC7(desc) ||
	    FUNC0(FUNC8(desc)))
		return -EINVAL;

	if (!handler) {
		if (!thread_fn)
			return -EINVAL;
		handler = irq_default_primary_handler;
	}

	action = FUNC11(sizeof(struct irqaction), GFP_KERNEL);
	if (!action)
		return -ENOMEM;

	action->handler = handler;
	action->thread_fn = thread_fn;
	action->flags = irqflags;
	action->name = devname;
	action->dev_id = dev_id;

	retval = FUNC4(&desc->irq_data);
	if (retval < 0) {
		FUNC10(action);
		return retval;
	}

	retval = FUNC1(irq, desc, action);

	if (retval) {
		FUNC5(&desc->irq_data);
		FUNC10(action->secondary);
		FUNC10(action);
	}

#ifdef CONFIG_DEBUG_SHIRQ_FIXME
	if (!retval && (irqflags & IRQF_SHARED)) {
		/*
		 * It's a shared IRQ -- the driver ought to be prepared for it
		 * to happen immediately, so let's make sure....
		 * We disable the irq to make sure that a 'real' IRQ doesn't
		 * run in parallel with our fake.
		 */
		unsigned long flags;

		disable_irq(irq);
		local_irq_save(flags);

		handler(irq, dev_id);

		local_irq_restore(flags);
		enable_irq(irq);
	}
#endif
	return retval;
}