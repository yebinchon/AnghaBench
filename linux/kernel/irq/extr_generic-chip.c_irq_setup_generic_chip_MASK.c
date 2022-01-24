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
typedef  int u32 ;
struct irq_data {int mask; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_calc_mask ) (struct irq_data*) ;} ;
struct irq_chip_type {int /*<<< orphan*/  handler; struct irq_chip chip; } ;
struct irq_chip_generic {unsigned int irq_base; unsigned int irq_cnt; int /*<<< orphan*/  list; struct irq_chip_type* chip_types; } ;
typedef  enum irq_gc_flags { ____Placeholder_irq_gc_flags } irq_gc_flags ;

/* Variables and functions */
 int IRQ_GC_INIT_NESTED_LOCK ; 
 int IRQ_GC_NO_MASK ; 
 int /*<<< orphan*/  gc_list ; 
 int /*<<< orphan*/  gc_lock ; 
 int /*<<< orphan*/  FUNC0 (struct irq_chip_generic*,int) ; 
 struct irq_data* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  irq_nested_lock_class ; 
 int /*<<< orphan*/  irq_nested_request_class ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct irq_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct irq_data*) ; 

void FUNC10(struct irq_chip_generic *gc, u32 msk,
			    enum irq_gc_flags flags, unsigned int clr,
			    unsigned int set)
{
	struct irq_chip_type *ct = gc->chip_types;
	struct irq_chip *chip = &ct->chip;
	unsigned int i;

	FUNC7(&gc_lock);
	FUNC6(&gc->list, &gc_list);
	FUNC8(&gc_lock);

	FUNC0(gc, flags);

	for (i = gc->irq_base; msk; msk >>= 1, i++) {
		if (!(msk & 0x01))
			continue;

		if (flags & IRQ_GC_INIT_NESTED_LOCK)
			FUNC5(i, &irq_nested_lock_class,
					      &irq_nested_request_class);

		if (!(flags & IRQ_GC_NO_MASK)) {
			struct irq_data *d = FUNC1(i);

			if (chip->irq_calc_mask)
				chip->irq_calc_mask(d);
			else
				d->mask = 1 << (i - gc->irq_base);
		}
		FUNC3(i, chip, ct->handler);
		FUNC4(i, gc);
		FUNC2(i, clr, set);
	}
	gc->irq_cnt = i - gc->irq_base;
}