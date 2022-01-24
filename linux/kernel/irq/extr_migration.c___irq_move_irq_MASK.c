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
struct irq_data {TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* irq_unmask ) (struct irq_data*) ;int /*<<< orphan*/  (* irq_mask ) (struct irq_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_data*) ; 
 struct irq_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct irq_data *idata)
{
	bool masked;

	/*
	 * Get top level irq_data when CONFIG_IRQ_DOMAIN_HIERARCHY is enabled,
	 * and it should be optimized away when CONFIG_IRQ_DOMAIN_HIERARCHY is
	 * disabled. So we avoid an "#ifdef CONFIG_IRQ_DOMAIN_HIERARCHY" here.
	 */
	idata = FUNC1(FUNC0(idata));

	if (FUNC7(FUNC3(idata)))
		return;

	/*
	 * Be careful vs. already masked interrupts. If this is a
	 * threaded interrupt with ONESHOT set, we can end up with an
	 * interrupt storm.
	 */
	masked = FUNC4(idata);
	if (!masked)
		idata->chip->irq_mask(idata);
	FUNC2(idata);
	if (!masked)
		idata->chip->irq_unmask(idata);
}