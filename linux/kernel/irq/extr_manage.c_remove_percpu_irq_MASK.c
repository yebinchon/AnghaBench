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
struct irqaction {int /*<<< orphan*/  percpu_dev_id; } ;
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct irq_desc*) ; 
 struct irq_desc* FUNC2 (unsigned int) ; 

void FUNC3(unsigned int irq, struct irqaction *act)
{
	struct irq_desc *desc = FUNC2(irq);

	if (desc && FUNC1(desc))
	    FUNC0(irq, act->percpu_dev_id);
}