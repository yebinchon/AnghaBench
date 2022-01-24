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
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
struct timekeeper {TYPE_2__ tkr_mono; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_3__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  timekeeping_suspended ; 
 TYPE_1__ tk_core ; 

ktime_t FUNC5(void)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	unsigned int seq;
	ktime_t base;
	u64 nsecs;

	FUNC0(timekeeping_suspended);

	do {
		seq = FUNC2(&tk_core.seq);
		base = tk->tkr_mono.base;
		nsecs = FUNC4(&tk->tkr_mono);

	} while (FUNC3(&tk_core.seq, seq));

	return FUNC1(base, nsecs);
}