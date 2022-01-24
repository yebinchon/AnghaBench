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
struct fprop_local_percpu {unsigned int period; int /*<<< orphan*/  lock; int /*<<< orphan*/  events; } ;
struct fprop_global {unsigned int period; } ;
typedef  unsigned int s64 ;

/* Variables and functions */
 unsigned int BITS_PER_LONG ; 
 unsigned int PROP_BATCH ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct fprop_global *p,
					struct fprop_local_percpu *pl)
{
	unsigned int period = p->period;
	unsigned long flags;

	/* Fast path - period didn't change */
	if (pl->period == period)
		return;
	FUNC4(&pl->lock, flags);
	/* Someone updated pl->period while we were spinning? */
	if (pl->period >= period) {
		FUNC5(&pl->lock, flags);
		return;
	}
	/* Aging zeroed our fraction? */
	if (period - pl->period < BITS_PER_LONG) {
		s64 val = FUNC1(&pl->events);

		if (val < (nr_cpu_ids * PROP_BATCH))
			val = FUNC3(&pl->events);

		FUNC0(&pl->events,
			-val + (val >> (period-pl->period)), PROP_BATCH);
	} else
		FUNC2(&pl->events, 0);
	pl->period = period;
	FUNC5(&pl->lock, flags);
}