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
typedef  int /*<<< orphan*/  u64 ;
struct timespec64 {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_3__ {int /*<<< orphan*/  cycle_last; struct clocksource* clock; } ;
struct timekeeper {TYPE_1__ tkr_mono; } ;
struct clocksource {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 int /*<<< orphan*/  TK_MIRROR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct clocksource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct timekeeper*) ; 
 int persistent_clock_exists ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec64*) ; 
 int suspend_timing_needed ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  timekeeper_lock ; 
 int /*<<< orphan*/  FUNC9 (struct timekeeper*) ; 
 struct timespec64 timekeeping_suspend_time ; 
 int timekeeping_suspended ; 
 int /*<<< orphan*/  FUNC10 (struct timekeeper*,int /*<<< orphan*/ ) ; 
 struct timespec64 FUNC11 (struct timespec64,struct timespec64) ; 
 struct timespec64 FUNC12 (struct timespec64,struct timespec64) ; 
 TYPE_2__ tk_core ; 
 struct timespec64 FUNC13 (struct timekeeper*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(void)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	unsigned long flags;
	struct timespec64		delta, delta_delta;
	static struct timespec64	old_delta;
	struct clocksource *curr_clock;
	u64 cycle_now;

	FUNC7(&timekeeping_suspend_time);

	/*
	 * On some systems the persistent_clock can not be detected at
	 * timekeeping_init by its return value, so if we see a valid
	 * value returned, update the persistent_clock_exists flag.
	 */
	if (timekeeping_suspend_time.tv_sec || timekeeping_suspend_time.tv_nsec)
		persistent_clock_exists = true;

	suspend_timing_needed = true;

	FUNC5(&timekeeper_lock, flags);
	FUNC14(&tk_core.seq);
	FUNC9(tk);
	timekeeping_suspended = 1;

	/*
	 * Since we've called forward_now, cycle_last stores the value
	 * just read from the current clocksource. Save this to potentially
	 * use in suspend timing.
	 */
	curr_clock = tk->tkr_mono.clock;
	cycle_now = tk->tkr_mono.cycle_last;
	FUNC2(curr_clock, cycle_now);

	if (persistent_clock_exists) {
		/*
		 * To avoid drift caused by repeated suspend/resumes,
		 * which each can add ~1 second drift error,
		 * try to compensate so the difference in system time
		 * and persistent_clock time stays close to constant.
		 */
		delta = FUNC12(FUNC13(tk), timekeeping_suspend_time);
		delta_delta = FUNC12(delta, old_delta);
		if (FUNC0(delta_delta.tv_sec) >= 2) {
			/*
			 * if delta_delta is too large, assume time correction
			 * has occurred and set old_delta to the current delta.
			 */
			old_delta = delta;
		} else {
			/* Otherwise try to adjust old_system to compensate */
			timekeeping_suspend_time =
				FUNC11(timekeeping_suspend_time, delta_delta);
		}
	}

	FUNC10(tk, TK_MIRROR);
	FUNC4(tk);
	FUNC15(&tk_core.seq);
	FUNC6(&timekeeper_lock, flags);

	FUNC8();
	FUNC3();
	FUNC1();

	return 0;
}