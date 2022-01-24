#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  work; int /*<<< orphan*/  pending; } ;
struct irq_sim {TYPE_2__ work_ctx; TYPE_1__* irqs; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

void FUNC2(struct irq_sim *sim, unsigned int offset)
{
	if (sim->irqs[offset].enabled) {
		FUNC1(offset, sim->work_ctx.pending);
		FUNC0(&sim->work_ctx.work);
	}
}