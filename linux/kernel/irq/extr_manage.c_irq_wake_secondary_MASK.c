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
struct irqaction {struct irqaction* secondary; } ;
struct irq_desc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct irq_desc *desc, struct irqaction *action)
{
	struct irqaction *secondary = action->secondary;

	if (FUNC0(!secondary))
		return;

	FUNC2(&desc->lock);
	FUNC1(desc, secondary);
	FUNC3(&desc->lock);
}