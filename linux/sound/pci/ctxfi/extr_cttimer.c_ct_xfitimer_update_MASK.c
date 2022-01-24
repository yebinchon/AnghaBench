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
struct ct_timer {int reprogram; int /*<<< orphan*/  lock; scalar_t__ irq_handling; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ct_timer*) ; 
 int /*<<< orphan*/  FUNC1 (struct ct_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct ct_timer *atimer)
{
	unsigned long flags;

	FUNC2(&atimer->lock, flags);
	if (atimer->irq_handling) {
		/* reached from IRQ handler; let it handle later */
		atimer->reprogram = 1;
		FUNC3(&atimer->lock, flags);
		return;
	}

	FUNC0(atimer);
	FUNC1(atimer, 0);
	FUNC3(&atimer->lock, flags);
}