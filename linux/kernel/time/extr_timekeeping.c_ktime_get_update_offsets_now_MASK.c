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
struct TYPE_4__ {scalar_t__ base; } ;
struct timekeeper {unsigned int clock_was_set_seq; scalar_t__ offs_real; scalar_t__ offs_boot; scalar_t__ offs_tai; scalar_t__ next_leap_ktime; TYPE_2__ tkr_mono; } ;
typedef  scalar_t__ ktime_t ;
struct TYPE_3__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_1__ tk_core ; 
 scalar_t__ FUNC6 (int) ; 

ktime_t FUNC7(unsigned int *cwsseq, ktime_t *offs_real,
				     ktime_t *offs_boot, ktime_t *offs_tai)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	unsigned int seq;
	ktime_t base;
	u64 nsecs;

	do {
		seq = FUNC3(&tk_core.seq);

		base = tk->tkr_mono.base;
		nsecs = FUNC5(&tk->tkr_mono);
		base = FUNC0(base, nsecs);

		if (*cwsseq != tk->clock_was_set_seq) {
			*cwsseq = tk->clock_was_set_seq;
			*offs_real = tk->offs_real;
			*offs_boot = tk->offs_boot;
			*offs_tai = tk->offs_tai;
		}

		/* Handle leapsecond insertion adjustments */
		if (FUNC6(base >= tk->next_leap_ktime))
			*offs_real = FUNC2(tk->offs_real, FUNC1(1, 0));

	} while (FUNC4(&tk_core.seq, seq));

	return base;
}