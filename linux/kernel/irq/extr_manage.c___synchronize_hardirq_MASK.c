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
struct irq_desc {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_data; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQCHIP_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct irq_data*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct irq_data* FUNC2 (struct irq_desc*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc, bool sync_chip)
{
	struct irq_data *irqd = FUNC2(desc);
	bool inprogress;

	do {
		unsigned long flags;

		/*
		 * Wait until we're out of the critical section.  This might
		 * give the wrong answer due to the lack of memory barriers.
		 */
		while (FUNC3(&desc->irq_data))
			FUNC1();

		/* Ok, that indicated we're done: double-check carefully. */
		FUNC4(&desc->lock, flags);
		inprogress = FUNC3(&desc->irq_data);

		/*
		 * If requested and supported, check at the chip whether it
		 * is in flight at the hardware level, i.e. already pending
		 * in a CPU and waiting for service and acknowledge.
		 */
		if (!inprogress && sync_chip) {
			/*
			 * Ignore the return code. inprogress is only updated
			 * when the chip supports it.
			 */
			FUNC0(irqd, IRQCHIP_STATE_ACTIVE,
						&inprogress);
		}
		FUNC5(&desc->lock, flags);

		/* Oops, that failed? */
	} while (inprogress);
}