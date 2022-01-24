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
struct irq_desc {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  lock; int /*<<< orphan*/  istate; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQD_IRQ_INPROGRESS ; 
 int /*<<< orphan*/  IRQS_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC5(struct irq_desc *desc)
{
	irqreturn_t ret;

	desc->istate &= ~IRQS_PENDING;
	FUNC2(&desc->irq_data, IRQD_IRQ_INPROGRESS);
	FUNC4(&desc->lock);

	ret = FUNC0(desc);

	FUNC3(&desc->lock);
	FUNC1(&desc->irq_data, IRQD_IRQ_INPROGRESS);
	return ret;
}