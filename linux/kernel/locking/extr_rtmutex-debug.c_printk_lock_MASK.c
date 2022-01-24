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
struct rt_mutex {int /*<<< orphan*/  owner; int /*<<< orphan*/  line; int /*<<< orphan*/  file; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct rt_mutex*) ; 

__attribute__((used)) static void FUNC3(struct rt_mutex *lock, int print_owner)
{
	if (lock->name)
		FUNC0(" [%p] {%s}\n",
			lock, lock->name);
	else
		FUNC0(" [%p] {%s:%d}\n",
			lock, lock->file, lock->line);

	if (print_owner && FUNC2(lock)) {
		FUNC0(".. ->owner: %p\n", lock->owner);
		FUNC0(".. held by:  ");
		FUNC1(FUNC2(lock));
		FUNC0("\n");
	}
}