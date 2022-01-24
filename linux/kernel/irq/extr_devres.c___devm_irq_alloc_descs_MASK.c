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
struct module {int dummy; } ;
struct irq_desc_devres {int from; unsigned int cnt; } ;
struct irq_affinity_desc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int,unsigned int,unsigned int,int,struct module*,struct irq_affinity_desc const*) ; 
 int /*<<< orphan*/  devm_irq_desc_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct irq_desc_devres*) ; 
 struct irq_desc_devres* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc_devres*) ; 

int FUNC4(struct device *dev, int irq, unsigned int from,
			   unsigned int cnt, int node, struct module *owner,
			   const struct irq_affinity_desc *affinity)
{
	struct irq_desc_devres *dr;
	int base;

	dr = FUNC2(devm_irq_desc_release, sizeof(*dr), GFP_KERNEL);
	if (!dr)
		return -ENOMEM;

	base = FUNC0(irq, from, cnt, node, owner, affinity);
	if (base < 0) {
		FUNC3(dr);
		return base;
	}

	dr->from = base;
	dr->cnt = cnt;
	FUNC1(dev, dr);

	return base;
}