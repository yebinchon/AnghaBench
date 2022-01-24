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
struct TYPE_2__ {int /*<<< orphan*/  pending; int /*<<< orphan*/  work; } ;
struct irq_sim {int /*<<< orphan*/  irqs; int /*<<< orphan*/  irq_count; int /*<<< orphan*/  irq_base; TYPE_1__ work_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct irq_sim *sim)
{
	FUNC2(&sim->work_ctx.work);
	FUNC0(sim->work_ctx.pending);
	FUNC1(sim->irq_base, sim->irq_count);
	FUNC3(sim->irqs);
}