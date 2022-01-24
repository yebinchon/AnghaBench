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
struct irq_domain_chip_generic {unsigned int irqs_per_chip; } ;
struct irq_domain {struct irq_domain_chip_generic* gc; } ;
struct irq_data {unsigned int hwirq; } ;
struct irq_chip_generic {int /*<<< orphan*/  installed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct irq_data* FUNC1 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct irq_chip_generic* FUNC3 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  no_irq_chip ; 

__attribute__((used)) static void FUNC4(struct irq_domain *d, unsigned int virq)
{
	struct irq_data *data = FUNC1(d, virq);
	struct irq_domain_chip_generic *dgc = d->gc;
	unsigned int hw_irq = data->hwirq;
	struct irq_chip_generic *gc;
	int irq_idx;

	gc = FUNC3(d, hw_irq);
	if (!gc)
		return;

	irq_idx = hw_irq % dgc->irqs_per_chip;

	FUNC0(irq_idx, &gc->installed);
	FUNC2(d, virq, hw_irq, &no_irq_chip, NULL, NULL, NULL,
			    NULL);

}