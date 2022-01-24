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
struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct timekeeper {struct timespec64 wall_to_monotonic; } ;
struct TYPE_2__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec64*,scalar_t__,scalar_t__) ; 
 TYPE_1__ tk_core ; 
 struct timespec64 FUNC3 (struct timekeeper*) ; 

void FUNC4(struct timespec64 *ts)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	struct timespec64 now, mono;
	unsigned int seq;

	do {
		seq = FUNC0(&tk_core.seq);

		now = FUNC3(tk);
		mono = tk->wall_to_monotonic;
	} while (FUNC1(&tk_core.seq, seq));

	FUNC2(ts, now.tv_sec + mono.tv_sec,
				now.tv_nsec + mono.tv_nsec);
}