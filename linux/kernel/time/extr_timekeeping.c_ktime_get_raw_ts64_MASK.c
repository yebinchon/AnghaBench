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
struct timespec64 {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct timekeeper {int /*<<< orphan*/  tkr_raw; int /*<<< orphan*/  raw_sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec64*,int /*<<< orphan*/ ) ; 
 TYPE_1__ tk_core ; 

void FUNC4(struct timespec64 *ts)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	unsigned int seq;
	u64 nsecs;

	do {
		seq = FUNC0(&tk_core.seq);
		ts->tv_sec = tk->raw_sec;
		nsecs = FUNC2(&tk->tkr_raw);

	} while (FUNC1(&tk_core.seq, seq));

	ts->tv_nsec = 0;
	FUNC3(ts, nsecs);
}