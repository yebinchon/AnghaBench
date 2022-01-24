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
struct timespec64 {int dummy; } ;
struct TYPE_4__ {scalar_t__ cycle_last; } ;
struct TYPE_6__ {scalar_t__ cycle_last; struct clocksource* clock; } ;
struct timekeeper {scalar_t__ ntp_error; TYPE_1__ tkr_raw; TYPE_3__ tkr_mono; } ;
struct clocksource {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 int TK_CLOCK_WAS_SET ; 
 int TK_MIRROR ; 
 int /*<<< orphan*/  FUNC0 (struct timekeeper*,struct timespec64*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct clocksource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct timespec64 FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct timespec64*) ; 
 int suspend_timing_needed ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  timekeeper_lock ; 
 int /*<<< orphan*/  timekeeping_suspend_time ; 
 scalar_t__ timekeeping_suspended ; 
 int /*<<< orphan*/  FUNC10 (struct timekeeper*,int) ; 
 scalar_t__ FUNC11 (struct timespec64*,int /*<<< orphan*/ *) ; 
 struct timespec64 FUNC12 (struct timespec64,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 TYPE_2__ tk_core ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

void FUNC17(void)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	struct clocksource *clock = tk->tkr_mono.clock;
	unsigned long flags;
	struct timespec64 ts_new, ts_delta;
	u64 cycle_now, nsec;
	bool inject_sleeptime = false;

	FUNC8(&ts_new);

	FUNC1();
	FUNC2();

	FUNC6(&timekeeper_lock, flags);
	FUNC15(&tk_core.seq);

	/*
	 * After system resumes, we need to calculate the suspended time and
	 * compensate it for the OS time. There are 3 sources that could be
	 * used: Nonstop clocksource during suspend, persistent clock and rtc
	 * device.
	 *
	 * One specific platform may have 1 or 2 or all of them, and the
	 * preference will be:
	 *	suspend-nonstop clocksource -> persistent clock -> rtc
	 * The less preferred source will only be tried if there is no better
	 * usable source. The rtc part is handled separately in rtc core code.
	 */
	cycle_now = FUNC13(&tk->tkr_mono);
	nsec = FUNC3(clock, cycle_now);
	if (nsec > 0) {
		ts_delta = FUNC5(nsec);
		inject_sleeptime = true;
	} else if (FUNC11(&ts_new, &timekeeping_suspend_time) > 0) {
		ts_delta = FUNC12(ts_new, timekeeping_suspend_time);
		inject_sleeptime = true;
	}

	if (inject_sleeptime) {
		suspend_timing_needed = false;
		FUNC0(tk, &ts_delta);
	}

	/* Re-base the last cycle value */
	tk->tkr_mono.cycle_last = cycle_now;
	tk->tkr_raw.cycle_last  = cycle_now;

	tk->ntp_error = 0;
	timekeeping_suspended = 0;
	FUNC10(tk, TK_MIRROR | TK_CLOCK_WAS_SET);
	FUNC16(&tk_core.seq);
	FUNC7(&timekeeper_lock, flags);

	FUNC14();

	FUNC9();
	FUNC4();
}