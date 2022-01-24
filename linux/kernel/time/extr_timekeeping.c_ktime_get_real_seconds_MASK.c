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
typedef  int /*<<< orphan*/  time64_t ;
struct timekeeper {int /*<<< orphan*/  xtime_sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_64BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__ tk_core ; 

time64_t FUNC3(void)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	time64_t seconds;
	unsigned int seq;

	if (FUNC0(CONFIG_64BIT))
		return tk->xtime_sec;

	do {
		seq = FUNC1(&tk_core.seq);
		seconds = tk->xtime_sec;

	} while (FUNC2(&tk_core.seq, seq));

	return seconds;
}