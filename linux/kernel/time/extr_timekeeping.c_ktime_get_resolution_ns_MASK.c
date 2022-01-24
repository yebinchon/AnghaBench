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
typedef  int u32 ;
struct TYPE_3__ {int mult; int shift; } ;
struct timekeeper {TYPE_1__ tkr_mono; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  timekeeping_suspended ; 
 TYPE_2__ tk_core ; 

u32 FUNC3(void)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	unsigned int seq;
	u32 nsecs;

	FUNC0(timekeeping_suspended);

	do {
		seq = FUNC1(&tk_core.seq);
		nsecs = tk->tkr_mono.mult >> tk->tkr_mono.shift;
	} while (FUNC2(&tk_core.seq, seq));

	return nsecs;
}