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
struct task_struct {int /*<<< orphan*/  comm; } ;
struct lockdep_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ debug_locks_silent ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct lockdep_map*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 

__attribute__((used)) static void FUNC9(struct task_struct *curr,
				       struct lockdep_map *lock,
				       unsigned long ip)
{
	if (!FUNC0())
		return;
	if (debug_locks_silent)
		return;

	FUNC4("\n");
	FUNC4("=====================================\n");
	FUNC4("WARNING: bad unlock balance detected!\n");
	FUNC6();
	FUNC4("-------------------------------------\n");
	FUNC4("%s/%d is trying to release lock (",
		curr->comm, FUNC8(curr));
	FUNC7(lock);
	FUNC3(") at:\n");
	FUNC5(ip);
	FUNC4("but there are no more locks to release!\n");
	FUNC4("\nother info that might help us debug this:\n");
	FUNC2(curr);

	FUNC4("\nstack backtrace:\n");
	FUNC1();
}