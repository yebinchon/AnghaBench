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
struct irq_desc {int dummy; } ;
struct irq_data {int /*<<< orphan*/  irq; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_unmask ) (struct irq_data*) ;int /*<<< orphan*/  (* irq_mask ) (struct irq_data*) ;int /*<<< orphan*/  irq_set_affinity; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 struct cpumask* cpu_online_mask ; 
 scalar_t__ FUNC0 (struct cpumask const*,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 struct cpumask* FUNC2 (struct irq_data*) ; 
 struct irq_chip* FUNC3 (struct irq_data*) ; 
 struct irq_data* FUNC4 (struct irq_desc*) ; 
 struct cpumask* FUNC5 (struct irq_desc*) ; 
 int FUNC6 (struct irq_data*,struct cpumask const*,int) ; 
 scalar_t__ FUNC7 (struct irq_desc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC9 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct irq_desc*) ; 
 scalar_t__ FUNC11 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct irq_data*) ; 
 scalar_t__ FUNC13 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct irq_data*) ; 
 scalar_t__ nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC19 (struct irq_data*) ; 

__attribute__((used)) static bool FUNC20(struct irq_desc *desc)
{
	struct irq_data *d = FUNC4(desc);
	struct irq_chip *chip = FUNC3(d);
	bool maskchip = !FUNC1(d) && !FUNC12(d);
	const struct cpumask *affinity;
	bool brokeaff = false;
	int err;

	/*
	 * IRQ chip might be already torn down, but the irq descriptor is
	 * still in the radix tree. Also if the chip has no affinity setter,
	 * nothing can be done here.
	 */
	if (!chip || !chip->irq_set_affinity) {
		FUNC16("IRQ %u: Unable to migrate away\n", d->irq);
		return false;
	}

	/*
	 * No move required, if:
	 * - Interrupt is per cpu
	 * - Interrupt is not started
	 * - Affinity mask does not include this CPU.
	 *
	 * Note: Do not check desc->action as this might be a chained
	 * interrupt.
	 */
	if (FUNC13(d) || !FUNC14(d) || !FUNC9(d)) {
		/*
		 * If an irq move is pending, abort it if the dying CPU is
		 * the sole target.
		 */
		FUNC7(desc, false);
		return false;
	}

	/*
	 * Complete an eventually pending irq move cleanup. If this
	 * interrupt was moved in hard irq context, then the vectors need
	 * to be cleaned up. It can't wait until this interrupt actually
	 * happens and this CPU was involved.
	 */
	FUNC8(desc);

	/*
	 * If there is a setaffinity pending, then try to reuse the pending
	 * mask, so the last change of the affinity does not get lost. If
	 * there is no move pending or the pending mask does not contain
	 * any online CPU, use the current affinity mask.
	 */
	if (FUNC7(desc, true))
		affinity = FUNC5(desc);
	else
		affinity = FUNC2(d);

	/* Mask the chip for interrupts which cannot move in process context */
	if (maskchip && chip->irq_mask)
		chip->irq_mask(d);

	if (FUNC0(affinity, cpu_online_mask) >= nr_cpu_ids) {
		/*
		 * If the interrupt is managed, then shut it down and leave
		 * the affinity untouched.
		 */
		if (FUNC11(d)) {
			FUNC15(d);
			FUNC10(desc);
			return false;
		}
		affinity = cpu_online_mask;
		brokeaff = true;
	}
	/*
	 * Do not set the force argument of irq_do_set_affinity() as this
	 * disables the masking of offline CPUs from the supplied affinity
	 * mask and therefore might keep/reassign the irq to the outgoing
	 * CPU.
	 */
	err = FUNC6(d, affinity, false);
	if (err) {
		FUNC17("IRQ%u: set affinity failed(%d).\n",
				    d->irq, err);
		brokeaff = false;
	}

	if (maskchip && chip->irq_unmask)
		chip->irq_unmask(d);

	return brokeaff;
}