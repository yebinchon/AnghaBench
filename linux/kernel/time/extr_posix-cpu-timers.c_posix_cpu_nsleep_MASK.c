#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timespec64 {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  clockid; } ;
struct restart_block {TYPE_1__ nanosleep; int /*<<< orphan*/  fn; } ;
typedef  int /*<<< orphan*/  clockid_t ;
struct TYPE_5__ {struct restart_block restart_block; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int EINVAL ; 
 int ERESTARTNOHAND ; 
 int ERESTART_RESTARTBLOCK ; 
 int TIMER_ABSTIME ; 
 TYPE_2__* current ; 
 int FUNC2 (int /*<<< orphan*/  const,int,struct timespec64 const*) ; 
 int /*<<< orphan*/  posix_cpu_nsleep_restart ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(const clockid_t which_clock, int flags,
			    const struct timespec64 *rqtp)
{
	struct restart_block *restart_block = &current->restart_block;
	int error;

	/*
	 * Diagnose required errors first.
	 */
	if (FUNC0(which_clock) &&
	    (FUNC1(which_clock) == 0 ||
	     FUNC1(which_clock) == FUNC3(current)))
		return -EINVAL;

	error = FUNC2(which_clock, flags, rqtp);

	if (error == -ERESTART_RESTARTBLOCK) {

		if (flags & TIMER_ABSTIME)
			return -ERESTARTNOHAND;

		restart_block->fn = posix_cpu_nsleep_restart;
		restart_block->nanosleep.clockid = which_clock;
	}
	return error;
}