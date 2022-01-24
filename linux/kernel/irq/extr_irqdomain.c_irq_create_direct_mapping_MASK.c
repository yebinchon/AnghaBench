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
struct irq_domain {unsigned int revmap_direct_max_irq; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct irq_domain* irq_default_domain ; 
 scalar_t__ FUNC1 (struct irq_domain*,unsigned int,unsigned int) ; 
 struct device_node* FUNC2 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 

unsigned int FUNC7(struct irq_domain *domain)
{
	struct device_node *of_node;
	unsigned int virq;

	if (domain == NULL)
		domain = irq_default_domain;

	of_node = FUNC2(domain);
	virq = FUNC0(1, FUNC4(of_node));
	if (!virq) {
		FUNC5("create_direct virq allocation failed\n");
		return 0;
	}
	if (virq >= domain->revmap_direct_max_irq) {
		FUNC6("ERROR: no free irqs available below %i maximum\n",
			domain->revmap_direct_max_irq);
		FUNC3(virq);
		return 0;
	}
	FUNC5("create_direct obtained virq %d\n", virq);

	if (FUNC1(domain, virq, virq)) {
		FUNC3(virq);
		return 0;
	}

	return virq;
}