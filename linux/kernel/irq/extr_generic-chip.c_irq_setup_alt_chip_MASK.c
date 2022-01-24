#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct irq_data {int /*<<< orphan*/ * chip; } ;
struct irq_chip_type {unsigned int type; int /*<<< orphan*/  handler; int /*<<< orphan*/  chip; } ;
struct irq_chip_generic {unsigned int num_ct; struct irq_chip_type* chip_types; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle_irq; } ;

/* Variables and functions */
 int EINVAL ; 
 struct irq_chip_generic* FUNC0 (struct irq_data*) ; 
 TYPE_1__* FUNC1 (struct irq_data*) ; 

int FUNC2(struct irq_data *d, unsigned int type)
{
	struct irq_chip_generic *gc = FUNC0(d);
	struct irq_chip_type *ct = gc->chip_types;
	unsigned int i;

	for (i = 0; i < gc->num_ct; i++, ct++) {
		if (ct->type & type) {
			d->chip = &ct->chip;
			FUNC1(d)->handle_irq = ct->handler;
			return 0;
		}
	}
	return -EINVAL;
}