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
struct file_lock {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file_lock*) ; 
 int /*<<< orphan*/  MAX_DEADLK_ITERATIONS ; 
 int /*<<< orphan*/  blocked_lock_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct file_lock*,struct file_lock*) ; 
 struct file_lock* FUNC3 (struct file_lock*) ; 

__attribute__((used)) static int FUNC4(struct file_lock *caller_fl,
				struct file_lock *block_fl)
{
	int i = 0;

	FUNC1(&blocked_lock_lock);

	/*
	 * This deadlock detector can't reasonably detect deadlocks with
	 * FL_OFDLCK locks, since they aren't owned by a process, per-se.
	 */
	if (FUNC0(caller_fl))
		return 0;

	while ((block_fl = FUNC3(block_fl))) {
		if (i++ > MAX_DEADLK_ITERATIONS)
			return 0;
		if (FUNC2(caller_fl, block_fl))
			return 1;
	}
	return 0;
}