#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ubifs_wbuf {int /*<<< orphan*/  timer; int /*<<< orphan*/  jhead; scalar_t__ no_timer; } ;
struct ubifs_info {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 unsigned long long NSEC_PER_MSEC ; 
 unsigned long long ULONG_MAX ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int dirty_writeback_interval ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,int) ; 

__attribute__((used)) static void FUNC8(struct ubifs_info *c, struct ubifs_wbuf *wbuf)
{
	ktime_t softlimit = FUNC6(dirty_writeback_interval * 10);
	unsigned long long delta = dirty_writeback_interval;

	/* centi to milli, milli to nano, then 10% */
	delta *= 10ULL * NSEC_PER_MSEC / 10ULL;

	FUNC7(c, !FUNC3(&wbuf->timer));
	FUNC7(c, delta <= ULONG_MAX);

	if (wbuf->no_timer)
		return;
	FUNC0("set timer for jhead %s, %llu-%llu millisecs",
	       FUNC1(wbuf->jhead),
	       FUNC2(FUNC5(softlimit), USEC_PER_SEC),
	       FUNC2(FUNC5(softlimit) + delta, USEC_PER_SEC));
	FUNC4(&wbuf->timer, softlimit, delta,
			       HRTIMER_MODE_REL);
}