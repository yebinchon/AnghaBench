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
struct timespec64 {scalar_t__ tv_nsec; } ;
struct timekeeper {int /*<<< orphan*/  wall_to_monotonic; } ;
struct TYPE_2__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NSEC_PER_SEC ; 
 int TK_CLEAR_NTP ; 
 int TK_CLOCK_WAS_SET ; 
 int TK_MIRROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timekeeper_lock ; 
 int /*<<< orphan*/  FUNC3 (struct timekeeper*) ; 
 int /*<<< orphan*/  FUNC4 (struct timekeeper*,int) ; 
 struct timespec64 FUNC5 (int /*<<< orphan*/ ,struct timespec64 const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct timespec64 const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct timespec64 const) ; 
 int /*<<< orphan*/  FUNC8 (struct timespec64*) ; 
 TYPE_1__ tk_core ; 
 int /*<<< orphan*/  FUNC9 (struct timekeeper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct timekeeper*) ; 
 int /*<<< orphan*/  FUNC11 (struct timekeeper*,struct timespec64 const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(const struct timespec64 *ts)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	unsigned long flags;
	struct timespec64 tmp;
	int ret = 0;

	if (ts->tv_nsec < 0 || ts->tv_nsec >= NSEC_PER_SEC)
		return -EINVAL;

	FUNC1(&timekeeper_lock, flags);
	FUNC12(&tk_core.seq);

	FUNC3(tk);

	/* Make sure the proposed value is valid */
	tmp = FUNC5(FUNC10(tk), *ts);
	if (FUNC6(&tk->wall_to_monotonic, ts) > 0 ||
	    !FUNC8(&tmp)) {
		ret = -EINVAL;
		goto error;
	}

	FUNC11(tk, ts);
	FUNC9(tk, FUNC7(tk->wall_to_monotonic, *ts));

error: /* even if we error out, we forwarded the time, so call update */
	FUNC4(tk, TK_CLEAR_NTP | TK_MIRROR | TK_CLOCK_WAS_SET);

	FUNC13(&tk_core.seq);
	FUNC2(&timekeeper_lock, flags);

	/* signal hrtimers about time change */
	FUNC0();

	return ret;
}