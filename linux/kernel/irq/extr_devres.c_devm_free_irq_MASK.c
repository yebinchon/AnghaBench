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
struct irq_devres {unsigned int member_0; void* member_1; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devm_irq_match ; 
 int /*<<< orphan*/  devm_irq_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct irq_devres*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,void*) ; 

void FUNC3(struct device *dev, unsigned int irq, void *dev_id)
{
	struct irq_devres match_data = { irq, dev_id };

	FUNC0(FUNC1(dev, devm_irq_release, devm_irq_match,
			       &match_data));
	FUNC2(irq, dev_id);
}