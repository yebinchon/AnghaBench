#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct itimerval {void* it_interval; void* it_value; } ;
struct cpu_itimer {scalar_t__ expires; scalar_t__ incr; } ;
struct TYPE_4__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_3__ {struct cpu_itimer* it; } ;

/* Variables and functions */
 unsigned int CPUCLOCK_VIRT ; 
 int /*<<< orphan*/  ITIMER_PROF ; 
 int /*<<< orphan*/  ITIMER_VIRTUAL ; 
 scalar_t__ TICK_NSEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct itimerval const* const,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct task_struct *tsk, unsigned int clock_id,
			   const struct itimerval *const value,
			   struct itimerval *const ovalue)
{
	u64 oval, nval, ointerval, ninterval;
	struct cpu_itimer *it = &tsk->signal->it[clock_id];

	/*
	 * Use the to_ktime conversion because that clamps the maximum
	 * value to KTIME_MAX and avoid multiplication overflows.
	 */
	nval = FUNC0(FUNC5(value->it_value));
	ninterval = FUNC0(FUNC5(value->it_interval));

	FUNC3(&tsk->sighand->siglock);

	oval = it->expires;
	ointerval = it->incr;
	if (oval || nval) {
		if (nval > 0)
			nval += TICK_NSEC;
		FUNC2(tsk, clock_id, &nval, &oval);
	}
	it->expires = nval;
	it->incr = ninterval;
	FUNC6(clock_id == CPUCLOCK_VIRT ?
			   ITIMER_VIRTUAL : ITIMER_PROF, value, nval);

	FUNC4(&tsk->sighand->siglock);

	if (ovalue) {
		ovalue->it_value = FUNC1(oval);
		ovalue->it_interval = FUNC1(ointerval);
	}
}