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
struct irq_data {struct irq_chip* chip; } ;
struct irq_desc {int /*<<< orphan*/  pending_mask; int /*<<< orphan*/  lock; struct irq_data irq_data; } ;
struct irq_chip {int /*<<< orphan*/  irq_set_affinity; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct irq_desc* FUNC5 (struct irq_data*) ; 
 int FUNC6 (struct irq_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct irq_data*) ; 
 scalar_t__ FUNC8 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct irq_data*) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ nr_cpu_ids ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct irq_data *idata)
{
	struct irq_desc *desc = FUNC5(idata);
	struct irq_data *data = &desc->irq_data;
	struct irq_chip *chip = data->chip;

	if (FUNC11(!FUNC9(data)))
		return;

	FUNC7(data);

	/*
	 * Paranoia: cpu-local interrupts shouldn't be calling in here anyway.
	 */
	if (FUNC8(data)) {
		FUNC0(1);
		return;
	}

	if (FUNC12(FUNC4(desc->pending_mask)))
		return;

	if (!chip->irq_set_affinity)
		return;

	FUNC1(&desc->lock);

	/*
	 * If there was a valid mask to work with, please
	 * do the disable, re-program, enable sequence.
	 * This is *not* particularly important for level triggered
	 * but in a edge trigger case, we might be setting rte
	 * when an active trigger is coming in. This could
	 * cause some ioapics to mal-function.
	 * Being paranoid i guess!
	 *
	 * For correct operation this depends on the caller
	 * masking the irqs.
	 */
	if (FUNC2(desc->pending_mask, cpu_online_mask) < nr_cpu_ids) {
		int ret;

		ret = FUNC6(data, desc->pending_mask, false);
		/*
		 * If the there is a cleanup pending in the underlying
		 * vector management, reschedule the move for the next
		 * interrupt. Leave desc->pending_mask intact.
		 */
		if (ret == -EBUSY) {
			FUNC10(data);
			return;
		}
	}
	FUNC3(desc->pending_mask);
}