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
struct irq_desc {int /*<<< orphan*/  pending_mask; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct irq_data* FUNC1 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 scalar_t__ nr_cpu_ids ; 

bool FUNC4(struct irq_desc *desc, bool force_clear)
{
	struct irq_data *data = FUNC1(desc);

	if (!FUNC3(data))
		return false;

	/*
	 * The outgoing CPU might be the last online target in a pending
	 * interrupt move. If that's the case clear the pending move bit.
	 */
	if (FUNC0(desc->pending_mask, cpu_online_mask) >= nr_cpu_ids) {
		FUNC2(data);
		return false;
	}
	if (force_clear)
		FUNC2(data);
	return true;
}