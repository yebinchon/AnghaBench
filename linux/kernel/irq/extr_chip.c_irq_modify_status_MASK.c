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
struct irq_desc {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  depth; } ;

/* Variables and functions */
 unsigned long IRQD_LEVEL ; 
 unsigned long IRQD_MOVE_PCNTXT ; 
 unsigned long IRQD_NO_BALANCING ; 
 unsigned long IRQD_PER_CPU ; 
 unsigned long IRQD_TRIGGER_MASK ; 
 unsigned long IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long _IRQ_NOAUTOEN ; 
 struct irq_desc* FUNC1 (unsigned int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*,unsigned long) ; 
 scalar_t__ FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_desc*,unsigned long,unsigned long) ; 
 unsigned long FUNC5 (struct irq_desc*) ; 
 scalar_t__ FUNC6 (struct irq_desc*) ; 
 scalar_t__ FUNC7 (struct irq_desc*) ; 
 scalar_t__ FUNC8 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC12(unsigned int irq, unsigned long clr, unsigned long set)
{
	unsigned long flags, trigger, tmp;
	struct irq_desc *desc = FUNC1(irq, &flags, 0);

	if (!desc)
		return;

	/*
	 * Warn when a driver sets the no autoenable flag on an already
	 * active interrupt.
	 */
	FUNC0(!desc->depth && (set & _IRQ_NOAUTOEN));

	FUNC4(desc, clr, set);

	trigger = FUNC10(&desc->irq_data);

	FUNC9(&desc->irq_data, IRQD_NO_BALANCING | IRQD_PER_CPU |
		   IRQD_TRIGGER_MASK | IRQD_LEVEL | IRQD_MOVE_PCNTXT);
	if (FUNC6(desc))
		FUNC11(&desc->irq_data, IRQD_NO_BALANCING);
	if (FUNC8(desc))
		FUNC11(&desc->irq_data, IRQD_PER_CPU);
	if (FUNC3(desc))
		FUNC11(&desc->irq_data, IRQD_MOVE_PCNTXT);
	if (FUNC7(desc))
		FUNC11(&desc->irq_data, IRQD_LEVEL);

	tmp = FUNC5(desc);
	if (tmp != IRQ_TYPE_NONE)
		trigger = tmp;

	FUNC11(&desc->irq_data, trigger);

	FUNC2(desc, flags);
}