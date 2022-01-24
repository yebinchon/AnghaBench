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
struct irq_fwspec {scalar_t__ fwnode; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_BUS_ANY ; 
 int /*<<< orphan*/  DOMAIN_BUS_WIRED ; 
 unsigned int IRQ_TYPE_NONE ; 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (struct irq_domain*,int /*<<< orphan*/ ) ; 
 struct irq_domain* irq_default_domain ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct irq_domain*,int,int /*<<< orphan*/ ,struct irq_fwspec*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (struct irq_domain*) ; 
 scalar_t__ FUNC6 (struct irq_domain*,struct irq_fwspec*,int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC7 (struct irq_domain*,int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC8 (struct irq_fwspec*,int /*<<< orphan*/ ) ; 
 struct irq_data* FUNC9 (int) ; 
 unsigned int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct irq_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

unsigned int FUNC15(struct irq_fwspec *fwspec)
{
	struct irq_domain *domain;
	struct irq_data *irq_data;
	irq_hw_number_t hwirq;
	unsigned int type = IRQ_TYPE_NONE;
	int virq;

	if (fwspec->fwnode) {
		domain = FUNC8(fwspec, DOMAIN_BUS_WIRED);
		if (!domain)
			domain = FUNC8(fwspec, DOMAIN_BUS_ANY);
	} else {
		domain = irq_default_domain;
	}

	if (!domain) {
		FUNC13("no irq domain found for %s !\n",
			FUNC12(FUNC14(fwspec->fwnode)));
		return 0;
	}

	if (FUNC6(domain, fwspec, &hwirq, &type))
		return 0;

	/*
	 * WARN if the irqchip returns a type with bits
	 * outside the sense mask set and clear these bits.
	 */
	if (FUNC0(type & ~IRQ_TYPE_SENSE_MASK))
		type &= IRQ_TYPE_SENSE_MASK;

	/*
	 * If we've already configured this interrupt,
	 * don't do it again, or hell will break loose.
	 */
	virq = FUNC7(domain, hwirq);
	if (virq) {
		/*
		 * If the trigger type is not specified or matches the
		 * current trigger type then we are done so return the
		 * interrupt number.
		 */
		if (type == IRQ_TYPE_NONE || type == FUNC10(virq))
			return virq;

		/*
		 * If the trigger type has not been set yet, then set
		 * it now and return the interrupt number.
		 */
		if (FUNC10(virq) == IRQ_TYPE_NONE) {
			irq_data = FUNC9(virq);
			if (!irq_data)
				return 0;

			FUNC11(irq_data, type);
			return virq;
		}

		FUNC13("type mismatch, failed to map hwirq-%lu for %s!\n",
			hwirq, FUNC12(FUNC14(fwspec->fwnode)));
		return 0;
	}

	if (FUNC5(domain)) {
		virq = FUNC3(domain, 1, NUMA_NO_NODE, fwspec);
		if (virq <= 0)
			return 0;
	} else {
		/* Create mapping */
		virq = FUNC1(domain, hwirq);
		if (!virq)
			return virq;
	}

	irq_data = FUNC9(virq);
	if (!irq_data) {
		if (FUNC5(domain))
			FUNC4(virq, 1);
		else
			FUNC2(virq);
		return 0;
	}

	/* Store trigger type */
	FUNC11(irq_data, type);

	return virq;
}