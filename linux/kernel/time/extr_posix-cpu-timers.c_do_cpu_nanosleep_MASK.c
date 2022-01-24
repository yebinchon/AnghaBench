#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct timespec64 {int tv_sec; int tv_nsec; } ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ expires; } ;
struct restart_block {TYPE_2__ nanosleep; } ;
struct TYPE_5__ {int /*<<< orphan*/  cpu; } ;
struct k_itimer {int it_overrun; struct timespec64 it_value; int /*<<< orphan*/  it_lock; TYPE_1__ it; TYPE_3__* it_process; int /*<<< orphan*/  it_clock; } ;
struct itimerspec64 {int it_overrun; struct timespec64 it_value; int /*<<< orphan*/  it_lock; TYPE_1__ it; TYPE_3__* it_process; int /*<<< orphan*/  it_clock; } ;
typedef  int /*<<< orphan*/  it ;
typedef  int /*<<< orphan*/  clockid_t ;
struct TYPE_7__ {struct restart_block restart_block; } ;

/* Variables and functions */
 int ERESTART_RESTARTBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int TIMER_RETRY ; 
 scalar_t__ TT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC2 (struct k_itimer*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct restart_block*,struct timespec64*) ; 
 int FUNC4 (struct k_itimer*) ; 
 int FUNC5 (struct k_itimer*) ; 
 int FUNC6 (struct k_itimer*,int,struct k_itimer*,struct k_itimer*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(const clockid_t which_clock, int flags,
			    const struct timespec64 *rqtp)
{
	struct itimerspec64 it;
	struct k_itimer timer;
	u64 expires;
	int error;

	/*
	 * Set up a temporary timer and then wait for it to go off.
	 */
	FUNC2(&timer, 0, sizeof timer);
	FUNC9(&timer.it_lock);
	timer.it_clock = which_clock;
	timer.it_overrun = -1;
	error = FUNC4(&timer);
	timer.it_process = current;

	if (!error) {
		static struct itimerspec64 zero_it;
		struct restart_block *restart;

		FUNC2(&it, 0, sizeof(it));
		it.it_value = *rqtp;

		FUNC10(&timer.it_lock);
		error = FUNC6(&timer, flags, &it, NULL);
		if (error) {
			FUNC11(&timer.it_lock);
			return error;
		}

		while (!FUNC8(current)) {
			if (!FUNC1(&timer.it.cpu)) {
				/*
				 * Our timer fired and was reset, below
				 * deletion can not fail.
				 */
				FUNC5(&timer);
				FUNC11(&timer.it_lock);
				return 0;
			}

			/*
			 * Block until cpu_timer_fire (or a signal) wakes us.
			 */
			FUNC0(TASK_INTERRUPTIBLE);
			FUNC11(&timer.it_lock);
			FUNC7();
			FUNC10(&timer.it_lock);
		}

		/*
		 * We were interrupted by a signal.
		 */
		expires = FUNC1(&timer.it.cpu);
		error = FUNC6(&timer, 0, &zero_it, &it);
		if (!error) {
			/*
			 * Timer is now unarmed, deletion can not fail.
			 */
			FUNC5(&timer);
		}
		FUNC11(&timer.it_lock);

		while (error == TIMER_RETRY) {
			/*
			 * We need to handle case when timer was or is in the
			 * middle of firing. In other cases we already freed
			 * resources.
			 */
			FUNC10(&timer.it_lock);
			error = FUNC5(&timer);
			FUNC11(&timer.it_lock);
		}

		if ((it.it_value.tv_sec | it.it_value.tv_nsec) == 0) {
			/*
			 * It actually did fire already.
			 */
			return 0;
		}

		error = -ERESTART_RESTARTBLOCK;
		/*
		 * Report back to the user the time still remaining.
		 */
		restart = &current->restart_block;
		restart->nanosleep.expires = expires;
		if (restart->nanosleep.type != TT_NONE)
			error = FUNC3(restart, &it.it_value);
	}

	return error;
}