#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct task_struct {TYPE_3__* signal; } ;
struct TYPE_4__ {TYPE_2__* bases; } ;
struct TYPE_6__ {TYPE_1__ posix_cputimers; } ;
struct TYPE_5__ {scalar_t__ nextevt; } ;

/* Variables and functions */
 unsigned int CPUCLOCK_SCHED ; 
 int /*<<< orphan*/  TICK_DEP_BIT_POSIX_TIMER ; 
 scalar_t__ TICK_NSEC ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC3(struct task_struct *tsk, unsigned int clkid,
			   u64 *newval, u64 *oldval)
{
	u64 now, *nextevt;

	if (FUNC0(clkid >= CPUCLOCK_SCHED))
		return;

	nextevt = &tsk->signal->posix_cputimers.bases[clkid].nextevt;
	now = FUNC1(clkid, tsk, true);

	if (oldval) {
		/*
		 * We are setting itimer. The *oldval is absolute and we update
		 * it to be relative, *newval argument is relative and we update
		 * it to be absolute.
		 */
		if (*oldval) {
			if (*oldval <= now) {
				/* Just about to fire. */
				*oldval = TICK_NSEC;
			} else {
				*oldval -= now;
			}
		}

		if (!*newval)
			return;
		*newval += now;
	}

	/*
	 * Update expiration cache if this is the earliest timer. CPUCLOCK_PROF
	 * expiry cache is also used by RLIMIT_CPU!.
	 */
	if (*newval < *nextevt)
		*nextevt = *newval;

	FUNC2(tsk->signal, TICK_DEP_BIT_POSIX_TIMER);
}