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
struct irqaction {scalar_t__ (* thread_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dev_id; int /*<<< orphan*/  irq; } ;
struct irq_desc {int /*<<< orphan*/  threads_handled; } ;
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 scalar_t__ IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC5(struct irq_desc *desc, struct irqaction *action)
{
	irqreturn_t ret;

	FUNC2();
	ret = action->thread_fn(action->irq, action->dev_id);
	if (ret == IRQ_HANDLED)
		FUNC0(&desc->threads_handled);

	FUNC1(desc, action);
	FUNC3();
	return ret;
}