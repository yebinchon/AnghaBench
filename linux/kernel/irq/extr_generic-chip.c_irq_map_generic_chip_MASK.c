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
struct irq_domain_chip_generic {int irqs_per_chip; int gc_flags; int /*<<< orphan*/  irq_flags_to_set; int /*<<< orphan*/  irq_flags_to_clear; } ;
struct irq_domain {struct irq_domain_chip_generic* gc; } ;
struct irq_data {int mask; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_calc_mask ) (struct irq_data*) ;} ;
struct irq_chip_type {int /*<<< orphan*/  handler; struct irq_chip chip; } ;
struct irq_chip_generic {int /*<<< orphan*/  installed; int /*<<< orphan*/  lock; struct irq_chip_type* chip_types; int /*<<< orphan*/  unused; } ;
typedef  int irq_hw_number_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOTSUPP ; 
 int IRQ_GC_INIT_NESTED_LOCK ; 
 scalar_t__ FUNC0 (struct irq_chip_generic*) ; 
 int FUNC1 (struct irq_chip_generic*) ; 
 struct irq_chip_generic* FUNC2 (struct irq_domain*,int) ; 
 struct irq_data* FUNC3 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_domain*,unsigned int,int,struct irq_chip*,struct irq_chip_generic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_chip_generic*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_nested_lock_class ; 
 int /*<<< orphan*/  irq_nested_request_class ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct irq_data*) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ *) ; 

int FUNC13(struct irq_domain *d, unsigned int virq,
			 irq_hw_number_t hw_irq)
{
	struct irq_data *data = FUNC3(d, virq);
	struct irq_domain_chip_generic *dgc = d->gc;
	struct irq_chip_generic *gc;
	struct irq_chip_type *ct;
	struct irq_chip *chip;
	unsigned long flags;
	int idx;

	gc = FUNC2(d, hw_irq);
	if (FUNC0(gc))
		return FUNC1(gc);

	idx = hw_irq % dgc->irqs_per_chip;

	if (FUNC12(idx, &gc->unused))
		return -ENOTSUPP;

	if (FUNC12(idx, &gc->installed))
		return -EBUSY;

	ct = gc->chip_types;
	chip = &ct->chip;

	/* We only init the cache for the first mapping of a generic chip */
	if (!gc->installed) {
		FUNC8(&gc->lock, flags);
		FUNC5(gc, dgc->gc_flags);
		FUNC9(&gc->lock, flags);
	}

	/* Mark the interrupt as installed */
	FUNC10(idx, &gc->installed);

	if (dgc->gc_flags & IRQ_GC_INIT_NESTED_LOCK)
		FUNC7(virq, &irq_nested_lock_class,
				      &irq_nested_request_class);

	if (chip->irq_calc_mask)
		chip->irq_calc_mask(data);
	else
		data->mask = 1 << idx;

	FUNC4(d, virq, hw_irq, chip, gc, ct->handler, NULL, NULL);
	FUNC6(virq, dgc->irq_flags_to_clear, dgc->irq_flags_to_set);
	return 0;
}