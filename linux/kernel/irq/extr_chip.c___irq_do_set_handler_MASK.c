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
struct irq_data {int /*<<< orphan*/ * chip; struct irq_data* parent_data; } ;
struct irq_desc {int depth; char const* name; int /*<<< orphan*/ * action; scalar_t__ handle_irq; struct irq_data irq_data; } ;
typedef  scalar_t__ irq_flow_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_RESEND ; 
 unsigned int IRQ_TYPE_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*,unsigned int) ; 
 int /*<<< orphan*/  chained_action ; 
 scalar_t__ handle_bad_irq ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_desc*) ; 
 unsigned int FUNC7 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_desc*) ; 
 int /*<<< orphan*/  no_irq_chip ; 

__attribute__((used)) static void
FUNC9(struct irq_desc *desc, irq_flow_handler_t handle,
		     int is_chained, const char *name)
{
	if (!handle) {
		handle = handle_bad_irq;
	} else {
		struct irq_data *irq_data = &desc->irq_data;
#ifdef CONFIG_IRQ_DOMAIN_HIERARCHY
		/*
		 * With hierarchical domains we might run into a
		 * situation where the outermost chip is not yet set
		 * up, but the inner chips are there.  Instead of
		 * bailing we install the handler, but obviously we
		 * cannot enable/startup the interrupt at this point.
		 */
		while (irq_data) {
			if (irq_data->chip != &no_irq_chip)
				break;
			/*
			 * Bail out if the outer chip is not set up
			 * and the interrupt supposed to be started
			 * right away.
			 */
			if (WARN_ON(is_chained))
				return;
			/* Try the parent */
			irq_data = irq_data->parent_data;
		}
#endif
		if (FUNC0(!irq_data || irq_data->chip == &no_irq_chip))
			return;
	}

	/* Uninstall? */
	if (handle == handle_bad_irq) {
		if (desc->irq_data.chip != &no_irq_chip)
			FUNC8(desc);
		FUNC6(desc);
		if (is_chained)
			desc->action = NULL;
		desc->depth = 1;
	}
	desc->handle_irq = handle;
	desc->name = name;

	if (handle != handle_bad_irq && is_chained) {
		unsigned int type = FUNC7(&desc->irq_data);

		/*
		 * We're about to start this interrupt immediately,
		 * hence the need to set the trigger configuration.
		 * But the .set_type callback may have overridden the
		 * flow handler, ignoring that we're dealing with a
		 * chained interrupt. Reset it immediately because we
		 * do know better.
		 */
		if (type != IRQ_TYPE_NONE) {
			FUNC1(desc, type);
			desc->handle_irq = handle;
		}

		FUNC3(desc);
		FUNC4(desc);
		FUNC5(desc);
		desc->action = &chained_action;
		FUNC2(desc, IRQ_RESEND);
	}
}