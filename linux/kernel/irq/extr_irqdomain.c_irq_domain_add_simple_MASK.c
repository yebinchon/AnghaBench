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
struct irq_domain_ops {int dummy; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SPARSE_IRQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,struct irq_domain_ops const*,void*) ; 
 int FUNC2 (unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_domain*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 

struct irq_domain *FUNC7(struct device_node *of_node,
					 unsigned int size,
					 unsigned int first_irq,
					 const struct irq_domain_ops *ops,
					 void *host_data)
{
	struct irq_domain *domain;

	domain = FUNC1(FUNC4(of_node), size, size, 0, ops, host_data);
	if (!domain)
		return NULL;

	if (first_irq > 0) {
		if (FUNC0(CONFIG_SPARSE_IRQ)) {
			/* attempt to allocated irq_descs */
			int rc = FUNC2(first_irq, first_irq, size,
						 FUNC5(of_node));
			if (rc < 0)
				FUNC6("Cannot allocate irq_descs @ IRQ%d, assuming pre-allocated\n",
					first_irq);
		}
		FUNC3(domain, first_irq, 0, size);
	}

	return domain;
}