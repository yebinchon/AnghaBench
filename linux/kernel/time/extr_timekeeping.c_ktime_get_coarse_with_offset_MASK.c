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
typedef  int u64 ;
struct TYPE_3__ {int xtime_nsec; int shift; int /*<<< orphan*/  base; } ;
struct timekeeper {TYPE_1__ tkr_mono; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  enum tk_offsets { ____Placeholder_tk_offsets } tk_offsets ;
struct TYPE_4__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** offsets ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  timekeeping_suspended ; 
 TYPE_2__ tk_core ; 

ktime_t FUNC5(enum tk_offsets offs)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	unsigned int seq;
	ktime_t base, *offset = offsets[offs];
	u64 nsecs;

	FUNC0(timekeeping_suspended);

	do {
		seq = FUNC3(&tk_core.seq);
		base = FUNC1(tk->tkr_mono.base, *offset);
		nsecs = tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;

	} while (FUNC4(&tk_core.seq, seq));

	return FUNC2(base, nsecs);
}