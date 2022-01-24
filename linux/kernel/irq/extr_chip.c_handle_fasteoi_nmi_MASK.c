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
struct irqaction {int /*<<< orphan*/  dev_id; int /*<<< orphan*/  (* handler ) (unsigned int,int /*<<< orphan*/ ) ;} ;
struct irq_desc {int /*<<< orphan*/  irq_data; struct irqaction* action; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_eoi ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 struct irq_chip* FUNC1 (struct irq_desc*) ; 
 unsigned int FUNC2 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,struct irqaction*,int /*<<< orphan*/ ) ; 

void FUNC7(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC1(desc);
	struct irqaction *action = desc->action;
	unsigned int irq = FUNC2(desc);
	irqreturn_t res;

	FUNC0(desc);

	FUNC5(irq, action);
	/*
	 * NMIs cannot be shared, there is only one action.
	 */
	res = action->handler(irq, action->dev_id);
	FUNC6(irq, action, res);

	if (chip->irq_eoi)
		chip->irq_eoi(&desc->irq_data);
}