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
struct fprop_local_single {unsigned int period; unsigned int events; int /*<<< orphan*/  lock; } ;
struct fprop_global {unsigned int period; } ;

/* Variables and functions */
 unsigned int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct fprop_global *p,
					struct fprop_local_single *pl)
{
	unsigned int period = p->period;
	unsigned long flags;

	/* Fast path - period didn't change */
	if (pl->period == period)
		return;
	FUNC0(&pl->lock, flags);
	/* Someone updated pl->period while we were spinning? */
	if (pl->period >= period) {
		FUNC1(&pl->lock, flags);
		return;
	}
	/* Aging zeroed our fraction? */
	if (period - pl->period < BITS_PER_LONG)
		pl->events >>= period - pl->period;
	else
		pl->events = 0;
	pl->period = period;
	FUNC1(&pl->lock, flags);
}