#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_6__ {struct posix_cputimer_base* bases; } ;
struct task_struct {TYPE_4__* signal; TYPE_2__ posix_cputimers; } ;
struct posix_cputimer_base {scalar_t__ nextevt; int /*<<< orphan*/  tqhead; } ;
struct cpu_timer {struct task_struct* task; } ;
struct TYPE_5__ {struct cpu_timer cpu; } ;
struct k_itimer {int /*<<< orphan*/  it_clock; TYPE_1__ it; } ;
struct TYPE_7__ {struct posix_cputimer_base* bases; } ;
struct TYPE_8__ {TYPE_3__ posix_cputimers; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TICK_DEP_BIT_POSIX_TIMER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cpu_timer*) ; 
 scalar_t__ FUNC3 (struct cpu_timer*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct k_itimer *timer)
{
	int clkidx = FUNC1(timer->it_clock);
	struct cpu_timer *ctmr = &timer->it.cpu;
	u64 newexp = FUNC3(ctmr);
	struct task_struct *p = ctmr->task;
	struct posix_cputimer_base *base;

	if (FUNC0(timer->it_clock))
		base = p->posix_cputimers.bases + clkidx;
	else
		base = p->signal->posix_cputimers.bases + clkidx;

	if (!FUNC2(&base->tqhead, ctmr))
		return;

	/*
	 * We are the new earliest-expiring POSIX 1.b timer, hence
	 * need to update expiration cache. Take into account that
	 * for process timers we share expiration cache with itimers
	 * and RLIMIT_CPU and for thread timers with RLIMIT_RTTIME.
	 */
	if (newexp < base->nextevt)
		base->nextevt = newexp;

	if (FUNC0(timer->it_clock))
		FUNC5(p, TICK_DEP_BIT_POSIX_TIMER);
	else
		FUNC4(p->signal, TICK_DEP_BIT_POSIX_TIMER);
}