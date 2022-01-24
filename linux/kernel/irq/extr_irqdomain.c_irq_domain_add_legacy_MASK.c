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
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 struct irq_domain* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct irq_domain_ops const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

struct irq_domain *FUNC3(struct device_node *of_node,
					 unsigned int size,
					 unsigned int first_irq,
					 irq_hw_number_t first_hwirq,
					 const struct irq_domain_ops *ops,
					 void *host_data)
{
	struct irq_domain *domain;

	domain = FUNC0(FUNC2(of_node), first_hwirq + size,
				  first_hwirq + size, 0, ops, host_data);
	if (domain)
		FUNC1(domain, first_irq, first_hwirq, size);

	return domain;
}