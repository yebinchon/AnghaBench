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
typedef  scalar_t__ u64 ;
struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct timekeeper {struct timespec64 wall_to_monotonic; int /*<<< orphan*/  tkr_mono; scalar_t__ xtime_sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timekeeping_suspended ; 
 int /*<<< orphan*/  FUNC4 (struct timespec64*,scalar_t__) ; 
 TYPE_1__ tk_core ; 

void FUNC5(struct timespec64 *ts)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	struct timespec64 tomono;
	unsigned int seq;
	u64 nsec;

	FUNC0(timekeeping_suspended);

	do {
		seq = FUNC1(&tk_core.seq);
		ts->tv_sec = tk->xtime_sec;
		nsec = FUNC3(&tk->tkr_mono);
		tomono = tk->wall_to_monotonic;

	} while (FUNC2(&tk_core.seq, seq));

	ts->tv_sec += tomono.tv_sec;
	ts->tv_nsec = 0;
	FUNC4(ts, nsec + tomono.tv_nsec);
}