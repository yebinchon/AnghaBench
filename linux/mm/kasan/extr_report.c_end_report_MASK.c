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

/* Variables and functions */
 int /*<<< orphan*/  LOCKDEP_NOW_UNRELIABLE ; 
 int /*<<< orphan*/  TAINT_BAD_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ panic_on_warn ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  report_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long *flags)
{
	FUNC3("==================================================================\n");
	FUNC0(TAINT_BAD_PAGE, LOCKDEP_NOW_UNRELIABLE);
	FUNC4(&report_lock, *flags);
	if (panic_on_warn)
		FUNC2("panic_on_warn set ...\n");
	FUNC1();
}