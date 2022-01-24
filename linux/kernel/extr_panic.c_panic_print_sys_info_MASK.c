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
 int /*<<< orphan*/  CONSOLE_REPLAY_ALL ; 
 int /*<<< orphan*/  DUMP_ALL ; 
 int PANIC_PRINT_ALL_PRINTK_MSG ; 
 int PANIC_PRINT_FTRACE_INFO ; 
 int PANIC_PRINT_LOCK_INFO ; 
 int PANIC_PRINT_MEM_INFO ; 
 int PANIC_PRINT_TASK_INFO ; 
 int PANIC_PRINT_TIMER_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int panic_print ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
	if (panic_print & PANIC_PRINT_ALL_PRINTK_MSG)
		FUNC0(CONSOLE_REPLAY_ALL);

	if (panic_print & PANIC_PRINT_TASK_INFO)
		FUNC4();

	if (panic_print & PANIC_PRINT_MEM_INFO)
		FUNC3(0, NULL);

	if (panic_print & PANIC_PRINT_TIMER_INFO)
		FUNC5();

	if (panic_print & PANIC_PRINT_LOCK_INFO)
		FUNC1();

	if (panic_print & PANIC_PRINT_FTRACE_INFO)
		FUNC2(DUMP_ALL);
}