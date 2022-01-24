#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  work; int /*<<< orphan*/  pending; } ;
struct irq_sim {scalar_t__ irq_base; unsigned int irq_count; TYPE_1__ work_ctx; TYPE_2__* irqs; } ;
struct TYPE_6__ {int irqnum; int enabled; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  IRQ_NOPROBE ; 
 int IRQ_NOREQUEST ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  irq_sim_handle_irq ; 
 int /*<<< orphan*/  irq_sim_irqchip ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 (unsigned int,int,int /*<<< orphan*/ ) ; 

int FUNC10(struct irq_sim *sim, unsigned int num_irqs)
{
	int i;

	sim->irqs = FUNC9(num_irqs, sizeof(*sim->irqs), GFP_KERNEL);
	if (!sim->irqs)
		return -ENOMEM;

	sim->irq_base = FUNC2(-1, 0, num_irqs, 0);
	if (sim->irq_base < 0) {
		FUNC8(sim->irqs);
		return sim->irq_base;
	}

	sim->work_ctx.pending = FUNC0(num_irqs, GFP_KERNEL);
	if (!sim->work_ctx.pending) {
		FUNC8(sim->irqs);
		FUNC3(sim->irq_base, num_irqs);
		return -ENOMEM;
	}

	for (i = 0; i < num_irqs; i++) {
		sim->irqs[i].irqnum = sim->irq_base + i;
		sim->irqs[i].enabled = false;
		FUNC5(sim->irq_base + i, &irq_sim_irqchip);
		FUNC6(sim->irq_base + i, &sim->irqs[i]);
		FUNC7(sim->irq_base + i, &handle_simple_irq);
		FUNC4(sim->irq_base + i,
				  IRQ_NOREQUEST | IRQ_NOAUTOEN, IRQ_NOPROBE);
	}

	FUNC1(&sim->work_ctx.work, irq_sim_handle_irq);
	sim->irq_count = num_irqs;

	return sim->irq_base;
}