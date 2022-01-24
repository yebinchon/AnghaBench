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
struct irq_desc {int dummy; } ;
struct irq_data {int dummy; } ;
typedef  enum irqchip_irq_state { ____Placeholder_irqchip_irq_state } irqchip_irq_state ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct irq_data*,int,int*) ; 
 struct irq_data* FUNC1 (struct irq_desc*) ; 
 struct irq_desc* FUNC2 (unsigned int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*,unsigned long) ; 

int FUNC4(unsigned int irq, enum irqchip_irq_state which,
			  bool *state)
{
	struct irq_desc *desc;
	struct irq_data *data;
	unsigned long flags;
	int err = -EINVAL;

	desc = FUNC2(irq, &flags, 0);
	if (!desc)
		return err;

	data = FUNC1(desc);

	err = FUNC0(data, which, state);

	FUNC3(desc, flags);
	return err;
}