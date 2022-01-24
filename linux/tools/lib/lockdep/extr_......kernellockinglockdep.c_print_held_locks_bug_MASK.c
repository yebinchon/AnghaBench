#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ debug_locks_silent ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(void)
{
	if (!FUNC0())
		return;
	if (debug_locks_silent)
		return;

	FUNC3("\n");
	FUNC3("====================================\n");
	FUNC3("WARNING: %s/%d still has locks held!\n",
	       current->comm, FUNC5(current));
	FUNC4();
	FUNC3("------------------------------------\n");
	FUNC2(current);
	FUNC3("\nstack backtrace:\n");
	FUNC1();
}