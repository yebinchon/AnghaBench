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
struct task_struct {int dummy; } ;
struct sighand_struct {int dummy; } ;
struct cpu_timer {struct task_struct* task; } ;
struct TYPE_3__ {struct cpu_timer cpu; } ;
struct k_itimer {int /*<<< orphan*/  it_clock; int /*<<< orphan*/  it_interval; TYPE_1__ it; } ;
struct TYPE_4__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct itimerspec64 {TYPE_2__ it_value; int /*<<< orphan*/  it_interval; } ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct task_struct*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct task_struct*,int) ; 
 scalar_t__ FUNC5 (struct cpu_timer*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpu_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct sighand_struct* FUNC8 (struct task_struct*,unsigned long*) ; 
 TYPE_2__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,unsigned long*) ; 

__attribute__((used)) static void FUNC12(struct k_itimer *timer, struct itimerspec64 *itp)
{
	clockid_t clkid = FUNC1(timer->it_clock);
	struct cpu_timer *ctmr = &timer->it.cpu;
	u64 now, expires = FUNC5(ctmr);
	struct task_struct *p = ctmr->task;

	if (FUNC2(!p))
		return;

	/*
	 * Easy part: convert the reload time.
	 */
	itp->it_interval = FUNC7(timer->it_interval);

	if (!expires)
		return;

	/*
	 * Sample the clock to take the difference with the expiry time.
	 */
	if (FUNC0(timer->it_clock)) {
		now = FUNC3(clkid, p);
	} else {
		struct sighand_struct *sighand;
		unsigned long flags;

		/*
		 * Protect against sighand release/switch in exit/exec and
		 * also make timer sampling safe if it ends up calling
		 * thread_group_cputime().
		 */
		sighand = FUNC8(p, &flags);
		if (FUNC10(sighand == NULL)) {
			/*
			 * The process has been reaped.
			 * We can't even collect a sample any more.
			 * Disarm the timer, nothing else to do.
			 */
			FUNC6(ctmr, 0);
			return;
		} else {
			now = FUNC4(clkid, p, false);
			FUNC11(p, &flags);
		}
	}

	if (now < expires) {
		itp->it_value = FUNC9(expires - now);
	} else {
		/*
		 * The timer should have expired already, but the firing
		 * hasn't taken place yet.  Say it's just about to expire.
		 */
		itp->it_value.tv_nsec = 1;
		itp->it_value.tv_sec = 0;
	}
}