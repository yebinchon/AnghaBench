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
struct irq_desc {int /*<<< orphan*/  irq_data; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_eoi ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* irq_ack ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*) ; 
 struct irq_chip* FUNC2 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC2(desc);

	/*
	 * PER CPU interrupts are not serialized. Do not touch
	 * desc->tot_count.
	 */
	FUNC0(desc);

	if (chip->irq_ack)
		chip->irq_ack(&desc->irq_data);

	FUNC1(desc);

	if (chip->irq_eoi)
		chip->irq_eoi(&desc->irq_data);
}