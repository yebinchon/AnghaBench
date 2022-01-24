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
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  net_rand_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(bool late)
{
	unsigned long flags;
	static bool latch = false;
	static DEFINE_SPINLOCK(lock);

	/* Asking for random bytes might result in bytes getting
	 * moved into the nonblocking pool and thus marking it
	 * as initialized. In this case we would double back into
	 * this function and attempt to do a late reseed.
	 * Ignore the pointless attempt to reseed again if we're
	 * already waiting for bytes when the nonblocking pool
	 * got initialized.
	 */

	/* only allow initial seeding (late == false) once */
	if (!FUNC1(&lock, flags))
		return;

	if (latch && !late)
		goto out;

	latch = true;
	FUNC0(&net_rand_state);
out:
	FUNC2(&lock, flags);
}