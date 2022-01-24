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
struct TYPE_4__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  cycle_last; } ;
struct timekeeper {scalar_t__ cycle_interval; TYPE_2__ tkr_mono; } ;
typedef  enum timekeeping_adv_mode { ____Placeholder_timekeeping_adv_mode } timekeeping_adv_mode ;
struct TYPE_3__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 int TK_ADV_TICK ; 
 unsigned int FUNC0 (struct timekeeper*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct timekeeper*,scalar_t__,int,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct timekeeper*,struct timekeeper*,int) ; 
 int FUNC7 (int,int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct timekeeper shadow_timekeeper ; 
 int /*<<< orphan*/  timekeeper_lock ; 
 int /*<<< orphan*/  FUNC11 (struct timekeeper*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct timekeeper*,scalar_t__) ; 
 int /*<<< orphan*/  timekeeping_suspended ; 
 int /*<<< orphan*/  FUNC13 (struct timekeeper*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 TYPE_1__ tk_core ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(enum timekeeping_adv_mode mode)
{
	struct timekeeper *real_tk = &tk_core.timekeeper;
	struct timekeeper *tk = &shadow_timekeeper;
	u64 offset;
	int shift = 0, maxshift;
	unsigned int clock_set = 0;
	unsigned long flags;

	FUNC9(&timekeeper_lock, flags);

	/* Make sure we're fully resumed: */
	if (FUNC15(timekeeping_suspended))
		goto out;

#ifdef CONFIG_ARCH_USES_GETTIMEOFFSET
	offset = real_tk->cycle_interval;

	if (mode != TK_ADV_TICK)
		goto out;
#else
	offset = FUNC2(FUNC14(&tk->tkr_mono),
				   tk->tkr_mono.cycle_last, tk->tkr_mono.mask);

	/* Check if there's really nothing to do */
	if (offset < real_tk->cycle_interval && mode == TK_ADV_TICK)
		goto out;
#endif

	/* Do some additional sanity checking */
	FUNC12(tk, offset);

	/*
	 * With NO_HZ we may have to accumulate many cycle_intervals
	 * (think "ticks") worth of time at once. To do this efficiently,
	 * we calculate the largest doubling multiple of cycle_intervals
	 * that is smaller than the offset.  We then accumulate that
	 * chunk in one go, and then try to consume the next smaller
	 * doubled multiple.
	 */
	shift = FUNC3(offset) - FUNC3(tk->cycle_interval);
	shift = FUNC5(0, shift);
	/* Bound shift to one less than what overflows tick_length */
	maxshift = (64 - (FUNC3(FUNC8())+1)) - 1;
	shift = FUNC7(shift, maxshift);
	while (offset >= tk->cycle_interval) {
		offset = FUNC4(tk, offset, shift,
							&clock_set);
		if (offset < tk->cycle_interval<<shift)
			shift--;
	}

	/* Adjust the multiplier to correct NTP error */
	FUNC11(tk, offset);

	/*
	 * Finally, make sure that after the rounding
	 * xtime_nsec isn't larger than NSEC_PER_SEC
	 */
	clock_set |= FUNC0(tk);

	FUNC16(&tk_core.seq);
	/*
	 * Update the real timekeeper.
	 *
	 * We could avoid this memcpy by switching pointers, but that
	 * requires changes to all other timekeeper usage sites as
	 * well, i.e. move the timekeeper pointer getter into the
	 * spinlocked/seqcount protected sections. And we trade this
	 * memcpy under the tk_core.seq against one before we start
	 * updating.
	 */
	FUNC13(tk, clock_set);
	FUNC6(real_tk, tk, sizeof(*tk));
	/* The memcpy must come last. Do not put anything here! */
	FUNC17(&tk_core.seq);
out:
	FUNC10(&timekeeper_lock, flags);
	if (clock_set)
		/* Have to call _delayed version, since in irq context*/
		FUNC1();
}