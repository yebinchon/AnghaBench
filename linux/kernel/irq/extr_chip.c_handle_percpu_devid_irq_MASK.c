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
struct irqaction {int /*<<< orphan*/  percpu_dev_id; int /*<<< orphan*/  (* handler ) (unsigned int,int /*<<< orphan*/ ) ;} ;
struct irq_desc {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  percpu_enabled; struct irqaction* action; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_eoi ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* irq_ack ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 struct irq_chip* FUNC2 (struct irq_desc*) ; 
 unsigned int FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_desc*,unsigned int) ; 
 scalar_t__ FUNC5 (struct irqaction*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,struct irqaction*,int /*<<< orphan*/ ) ; 

void FUNC14(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC2(desc);
	struct irqaction *action = desc->action;
	unsigned int irq = FUNC3(desc);
	irqreturn_t res;

	/*
	 * PER CPU interrupts are not serialized. Do not touch
	 * desc->tot_count.
	 */
	FUNC0(desc);

	if (chip->irq_ack)
		chip->irq_ack(&desc->irq_data);

	if (FUNC5(action)) {
		FUNC12(irq, action);
		res = action->handler(irq, FUNC7(action->percpu_dev_id));
		FUNC13(irq, action, res);
	} else {
		unsigned int cpu = FUNC8();
		bool enabled = FUNC1(cpu, desc->percpu_enabled);

		if (enabled)
			FUNC4(desc, cpu);

		FUNC6("Spurious%s percpu IRQ%u on CPU%u\n",
			    enabled ? " and unmasked" : "", irq, cpu);
	}

	if (chip->irq_eoi)
		chip->irq_eoi(&desc->irq_data);
}