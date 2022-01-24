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
struct fuse_conn {int /*<<< orphan*/  blocked_waitq; int /*<<< orphan*/  connected; int /*<<< orphan*/  num_waiting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fuse_conn *fc)
{
	/*
	 * lockess check of fc->connected is okay, because atomic_dec_and_test()
	 * provides a memory barrier mached with the one in fuse_wait_aborted()
	 * to ensure no wake-up is missed.
	 */
	if (FUNC1(&fc->num_waiting) &&
	    !FUNC0(fc->connected)) {
		/* wake up aborters */
		FUNC2(&fc->blocked_waitq);
	}
}