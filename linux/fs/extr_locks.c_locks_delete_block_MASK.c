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
struct file_lock {int /*<<< orphan*/ * fl_blocker; int /*<<< orphan*/  fl_blocked_requests; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock*) ; 
 int /*<<< orphan*/  blocked_lock_lock ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct file_lock *waiter)
{
	int status = -ENOENT;

	/*
	 * If fl_blocker is NULL, it won't be set again as this thread
	 * "owns" the lock and is the only one that might try to claim
	 * the lock.  So it is safe to test fl_blocker locklessly.
	 * Also if fl_blocker is NULL, this waiter is not listed on
	 * fl_blocked_requests for some lock, so no other request can
	 * be added to the list of fl_blocked_requests for this
	 * request.  So if fl_blocker is NULL, it is safe to
	 * locklessly check if fl_blocked_requests is empty.  If both
	 * of these checks succeed, there is no need to take the lock.
	 */
	if (waiter->fl_blocker == NULL &&
	    FUNC2(&waiter->fl_blocked_requests))
		return status;
	FUNC3(&blocked_lock_lock);
	if (waiter->fl_blocker)
		status = 0;
	FUNC1(waiter);
	FUNC0(waiter);
	FUNC4(&blocked_lock_lock);
	return status;
}