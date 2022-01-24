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
struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct timekeeper {int /*<<< orphan*/  wall_to_monotonic; } ;
struct TYPE_2__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 int EINVAL ; 
 int TK_CLEAR_NTP ; 
 int TK_CLOCK_WAS_SET ; 
 int TK_MIRROR ; 
 int /*<<< orphan*/  FUNC0 (struct timespec64) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timekeeper_lock ; 
 int /*<<< orphan*/  FUNC4 (struct timekeeper*) ; 
 int /*<<< orphan*/  FUNC5 (struct timekeeper*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct timespec64*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct timespec64) ; 
 int /*<<< orphan*/  FUNC8 (struct timespec64 const*) ; 
 TYPE_1__ tk_core ; 
 int /*<<< orphan*/  FUNC9 (struct timekeeper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct timekeeper*,struct timespec64 const*) ; 
 struct timespec64 FUNC11 (struct timekeeper*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(const struct timespec64 *ts)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	struct timespec64 ts_delta, xt;
	unsigned long flags;
	int ret = 0;

	if (!FUNC8(ts))
		return -EINVAL;

	FUNC2(&timekeeper_lock, flags);
	FUNC12(&tk_core.seq);

	FUNC4(tk);

	xt = FUNC11(tk);
	ts_delta.tv_sec = ts->tv_sec - xt.tv_sec;
	ts_delta.tv_nsec = ts->tv_nsec - xt.tv_nsec;

	if (FUNC6(&tk->wall_to_monotonic, &ts_delta) > 0) {
		ret = -EINVAL;
		goto out;
	}

	FUNC9(tk, FUNC7(tk->wall_to_monotonic, ts_delta));

	FUNC10(tk, ts);
out:
	FUNC5(tk, TK_CLEAR_NTP | TK_MIRROR | TK_CLOCK_WAS_SET);

	FUNC13(&tk_core.seq);
	FUNC3(&timekeeper_lock, flags);

	/* signal hrtimers about time change */
	FUNC1();

	if (!ret)
		FUNC0(ts_delta);

	return ret;
}