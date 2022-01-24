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
typedef  int u32 ;
struct irq_data {int mask; } ;
struct irq_chip_generic {int wake_enabled; int wake_active; } ;

/* Variables and functions */
 int EINVAL ; 
 struct irq_chip_generic* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip_generic*) ; 

int FUNC3(struct irq_data *d, unsigned int on)
{
	struct irq_chip_generic *gc = FUNC0(d);
	u32 mask = d->mask;

	if (!(mask & gc->wake_enabled))
		return -EINVAL;

	FUNC1(gc);
	if (on)
		gc->wake_active |= mask;
	else
		gc->wake_active &= ~mask;
	FUNC2(gc);
	return 0;
}