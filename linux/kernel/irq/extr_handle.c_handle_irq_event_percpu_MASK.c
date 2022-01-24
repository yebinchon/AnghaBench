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
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct irq_desc {TYPE_1__ irq_data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  noirqdebug ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC3(struct irq_desc *desc)
{
	irqreturn_t retval;
	unsigned int flags = 0;

	retval = FUNC0(desc, &flags);

	FUNC1(desc->irq_data.irq, flags);

	if (!noirqdebug)
		FUNC2(desc, retval);
	return retval;
}