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
struct irq_domain {int /*<<< orphan*/  mapcount; TYPE_1__* ops; } ;
struct irq_data {scalar_t__ hwirq; struct irq_domain* domain; } ;
typedef  scalar_t__ irq_hw_number_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmap ) (struct irq_domain*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NOREQUEST ; 
 scalar_t__ FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,scalar_t__) ; 
 struct irq_data* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

void FUNC8(struct irq_domain *domain, unsigned int irq)
{
	struct irq_data *irq_data = FUNC2(irq);
	irq_hw_number_t hwirq;

	if (FUNC0(!irq_data || irq_data->domain != domain,
		 "virq%i doesn't exist; cannot disassociate\n", irq))
		return;

	hwirq = irq_data->hwirq;
	FUNC4(irq, IRQ_NOREQUEST);

	/* remove chip and handler */
	FUNC3(irq, NULL, NULL);

	/* Make sure it's completed */
	FUNC7(irq);

	/* Tell the PIC about it */
	if (domain->ops->unmap)
		domain->ops->unmap(domain, irq);
	FUNC5();

	irq_data->domain = NULL;
	irq_data->hwirq = 0;
	domain->mapcount--;

	/* Clear reverse map for this hwirq */
	FUNC1(domain, hwirq);
}