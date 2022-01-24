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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {unsigned long timeout; } ;
struct posix_cputimers {int dummy; } ;
struct task_struct {TYPE_3__* signal; TYPE_1__ rt; struct posix_cputimers posix_cputimers; } ;
struct list_head {int dummy; } ;
struct TYPE_6__ {TYPE_2__* rlim; } ;
struct TYPE_5__ {unsigned long rlim_cur; } ;

/* Variables and functions */
 int CPUCLOCK_MAX ; 
 unsigned long HZ ; 
 size_t RLIMIT_RTTIME ; 
 unsigned long RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGXCPU ; 
 int /*<<< orphan*/  TICK_DEP_BIT_POSIX_TIMER ; 
 unsigned long USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct posix_cputimers*,int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 
 scalar_t__ FUNC4 (struct posix_cputimers*) ; 
 unsigned long FUNC5 (struct task_struct*,size_t) ; 
 unsigned long FUNC6 (struct task_struct*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct task_struct *tsk,
				struct list_head *firing)
{
	struct posix_cputimers *pct = &tsk->posix_cputimers;
	u64 samples[CPUCLOCK_MAX];
	unsigned long soft;

	if (FUNC3(tsk))
		FUNC0(tsk);

	if (FUNC4(pct))
		return;

	FUNC7(tsk, samples);
	FUNC2(pct, samples, firing);

	/*
	 * Check for the special case thread timers.
	 */
	soft = FUNC5(tsk, RLIMIT_RTTIME);
	if (soft != RLIM_INFINITY) {
		/* Task RT timeout is accounted in jiffies. RTTIME is usec */
		unsigned long rttime = tsk->rt.timeout * (USEC_PER_SEC / HZ);
		unsigned long hard = FUNC6(tsk, RLIMIT_RTTIME);

		/* At the hard limit, send SIGKILL. No further action. */
		if (hard != RLIM_INFINITY &&
		    FUNC1(rttime, hard, SIGKILL, true, true))
			return;

		/* At the soft limit, send a SIGXCPU every second */
		if (FUNC1(rttime, soft, SIGXCPU, true, false)) {
			soft += USEC_PER_SEC;
			tsk->signal->rlim[RLIMIT_RTTIME].rlim_cur = soft;
		}
	}

	if (FUNC4(pct))
		FUNC8(tsk, TICK_DEP_BIT_POSIX_TIMER);
}