#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct task_struct {int /*<<< orphan*/  exit_state; } ;
struct sighand_struct {int dummy; } ;
struct cpu_timer {struct task_struct* task; } ;
struct TYPE_2__ {struct cpu_timer cpu; } ;
struct k_itimer {int /*<<< orphan*/  it_clock; TYPE_1__ it; } ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct k_itimer*) ; 
 int /*<<< orphan*/  FUNC4 (struct k_itimer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cpu_timer*,int /*<<< orphan*/ ) ; 
 struct sighand_struct* FUNC8 (struct task_struct*,unsigned long*) ; 
 scalar_t__ FUNC9 (struct task_struct*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,unsigned long*) ; 

__attribute__((used)) static void FUNC12(struct k_itimer *timer)
{
	clockid_t clkid = FUNC1(timer->it_clock);
	struct cpu_timer *ctmr = &timer->it.cpu;
	struct task_struct *p = ctmr->task;
	struct sighand_struct *sighand;
	unsigned long flags;
	u64 now;

	if (FUNC2(!p))
		return;

	/*
	 * Fetch the current sample and update the timer's expiry time.
	 */
	if (FUNC0(timer->it_clock)) {
		now = FUNC5(clkid, p);
		FUNC4(timer, now);
		if (FUNC10(p->exit_state))
			return;

		/* Protect timer list r/w in arm_timer() */
		sighand = FUNC8(p, &flags);
		if (!sighand)
			return;
	} else {
		/*
		 * Protect arm_timer() and timer sampling in case of call to
		 * thread_group_cputime().
		 */
		sighand = FUNC8(p, &flags);
		if (FUNC10(sighand == NULL)) {
			/*
			 * The process has been reaped.
			 * We can't even collect a sample any more.
			 */
			FUNC7(ctmr, 0);
			return;
		} else if (FUNC10(p->exit_state) && FUNC9(p)) {
			/* If the process is dying, no need to rearm */
			goto unlock;
		}
		now = FUNC6(clkid, p, true);
		FUNC4(timer, now);
		/* Leave the sighand locked for the call below.  */
	}

	/*
	 * Now re-arm for the new expiry time.
	 */
	FUNC3(timer);
unlock:
	FUNC11(p, &flags);
}