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
struct irq_domain {scalar_t__ revmap_direct_max_irq; scalar_t__ revmap_size; unsigned int* linear_revmap; int /*<<< orphan*/  revmap_tree; } ;
struct irq_data {scalar_t__ hwirq; unsigned int irq; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 struct irq_domain* irq_default_domain ; 
 struct irq_data* FUNC0 (struct irq_domain*,scalar_t__) ; 
 struct irq_data* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

unsigned int FUNC4(struct irq_domain *domain,
			      irq_hw_number_t hwirq)
{
	struct irq_data *data;

	/* Look for default domain if nececssary */
	if (domain == NULL)
		domain = irq_default_domain;
	if (domain == NULL)
		return 0;

	if (hwirq < domain->revmap_direct_max_irq) {
		data = FUNC0(domain, hwirq);
		if (data && data->hwirq == hwirq)
			return hwirq;
	}

	/* Check if the hwirq is in the linear revmap. */
	if (hwirq < domain->revmap_size)
		return domain->linear_revmap[hwirq];

	FUNC2();
	data = FUNC1(&domain->revmap_tree, hwirq);
	FUNC3();
	return data ? data->irq : 0;
}