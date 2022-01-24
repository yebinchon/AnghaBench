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
typedef  enum con_flush_mode { ____Placeholder_con_flush_mode } con_flush_mode ;

/* Variables and functions */
 int CONSOLE_REPLAY_ALL ; 
 int /*<<< orphan*/  console_idx ; 
 scalar_t__ console_may_schedule ; 
 int /*<<< orphan*/  console_seq ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  log_first_idx ; 
 int /*<<< orphan*/  log_first_seq ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void FUNC4(enum con_flush_mode mode)
{
	/*
	 * If someone else is holding the console lock, trylock will fail
	 * and may_schedule may be set.  Ignore and proceed to unlock so
	 * that messages are flushed out.  As this can be called from any
	 * context and we don't want to get preempted while flushing,
	 * ensure may_schedule is cleared.
	 */
	FUNC0();
	console_may_schedule = 0;

	if (mode == CONSOLE_REPLAY_ALL) {
		unsigned long flags;

		FUNC2(flags);
		console_seq = log_first_seq;
		console_idx = log_first_idx;
		FUNC3(flags);
	}
	FUNC1();
}