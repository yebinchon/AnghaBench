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
struct task_struct {int /*<<< orphan*/  comm; } ;
struct held_lock {TYPE_1__* nest_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ debug_locks_silent ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct held_lock*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

__attribute__((used)) static void
FUNC7(struct task_struct *curr,
				struct held_lock *hlock,
				unsigned long ip)
{
	if (!FUNC0())
		return;
	if (debug_locks_silent)
		return;

	FUNC3("\n");
	FUNC3("==================================\n");
	FUNC3("WARNING: Nested lock was not taken\n");
	FUNC4();
	FUNC3("----------------------------------\n");

	FUNC3("%s/%d is trying to lock:\n", curr->comm, FUNC6(curr));
	FUNC5(hlock);

	FUNC3("\nbut this task is not holding:\n");
	FUNC3("%s\n", hlock->nest_lock->name);

	FUNC3("\nstack backtrace:\n");
	FUNC1();

	FUNC3("\nother info that might help us debug this:\n");
	FUNC2(curr);

	FUNC3("\nstack backtrace:\n");
	FUNC1();
}