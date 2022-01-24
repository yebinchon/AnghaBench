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
struct irq_chip_generic {unsigned int irq_base; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  gc_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  no_irq_chip ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct irq_chip_generic *gc, u32 msk,
			     unsigned int clr, unsigned int set)
{
	unsigned int i = gc->irq_base;

	FUNC5(&gc_lock);
	FUNC4(&gc->list);
	FUNC6(&gc_lock);

	for (; msk; msk >>= 1, i++) {
		if (!(msk & 0x01))
			continue;

		/* Remove handler first. That will mask the irq line */
		FUNC3(i, NULL);
		FUNC1(i, &no_irq_chip);
		FUNC2(i, NULL);
		FUNC0(i, clr, set);
	}
}