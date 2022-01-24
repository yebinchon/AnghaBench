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
typedef  int /*<<< orphan*/  u32 ;
struct irq_fwspec {int dummy; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int FUNC0 (struct irq_domain*,struct irq_fwspec*,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int /*<<< orphan*/  const*,unsigned int,struct irq_fwspec*) ; 

int FUNC2(struct irq_domain *d, struct device_node *ctrlr,
			const u32 *intspec, unsigned int intsize,
			irq_hw_number_t *out_hwirq, unsigned int *out_type)
{
	struct irq_fwspec fwspec;

	FUNC1(ctrlr, intspec, intsize, &fwspec);
	return FUNC0(d, &fwspec, out_hwirq, out_type);
}