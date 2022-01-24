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
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,int /*<<< orphan*/ ,int) ; 
 struct device_node* FUNC2 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct irq_domain *domain, unsigned int irq_base,
			       irq_hw_number_t hwirq_base, int count)
{
	struct device_node *of_node;
	int ret;

	of_node = FUNC2(domain);
	ret = FUNC0(irq_base, irq_base, count,
			      FUNC3(of_node));
	if (FUNC4(ret < 0))
		return ret;

	FUNC1(domain, irq_base, hwirq_base, count);
	return 0;
}