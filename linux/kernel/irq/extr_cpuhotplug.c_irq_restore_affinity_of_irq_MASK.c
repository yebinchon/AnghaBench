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
struct irq_desc {int /*<<< orphan*/  action; } ;
struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_RESEND ; 
 int /*<<< orphan*/  IRQ_START_COND ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct cpumask const*) ; 
 struct cpumask* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 struct irq_data* FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,struct cpumask const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*) ; 
 scalar_t__ FUNC7 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_data*) ; 

__attribute__((used)) static void FUNC9(struct irq_desc *desc, unsigned int cpu)
{
	struct irq_data *data = FUNC3(desc);
	const struct cpumask *affinity = FUNC1(data);

	if (!FUNC6(data) || !desc->action ||
	    !FUNC2(data) || !FUNC0(cpu, affinity))
		return;

	if (FUNC7(data)) {
		FUNC5(desc, IRQ_RESEND, IRQ_START_COND);
		return;
	}

	/*
	 * If the interrupt can only be directed to a single target
	 * CPU then it is already assigned to a CPU in the affinity
	 * mask. No point in trying to move it around.
	 */
	if (!FUNC8(data))
		FUNC4(data, affinity, false);
}