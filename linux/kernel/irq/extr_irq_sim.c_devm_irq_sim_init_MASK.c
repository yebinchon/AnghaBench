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
struct irq_sim_devres {struct irq_sim* sim; } ;
struct irq_sim {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_irq_sim_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct irq_sim_devres*) ; 
 struct irq_sim_devres* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_sim_devres*) ; 
 int FUNC3 (struct irq_sim*,unsigned int) ; 

int FUNC4(struct device *dev, struct irq_sim *sim,
		      unsigned int num_irqs)
{
	struct irq_sim_devres *dr;
	int rv;

	dr = FUNC1(devm_irq_sim_release, sizeof(*dr), GFP_KERNEL);
	if (!dr)
		return -ENOMEM;

	rv = FUNC3(sim, num_irqs);
	if (rv < 0) {
		FUNC2(dr);
		return rv;
	}

	dr->sim = sim;
	FUNC0(dev, dr);

	return rv;
}