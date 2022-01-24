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
struct file_lock {int /*<<< orphan*/  fl_blocked_requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file_lock*) ; 
 int /*<<< orphan*/  blocked_lock_lock ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct file_lock *blocker)
{
	/*
	 * Avoid taking global lock if list is empty. This is safe since new
	 * blocked requests are only added to the list under the flc_lock, and
	 * the flc_lock is always held here. Note that removal from the
	 * fl_blocked_requests list does not require the flc_lock, so we must
	 * recheck list_empty() after acquiring the blocked_lock_lock.
	 */
	if (FUNC1(&blocker->fl_blocked_requests))
		return;

	FUNC2(&blocked_lock_lock);
	FUNC0(blocker);
	FUNC3(&blocked_lock_lock);
}