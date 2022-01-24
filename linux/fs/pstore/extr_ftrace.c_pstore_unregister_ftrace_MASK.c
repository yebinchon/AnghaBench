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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pstore_ftrace_dir ; 
 int pstore_ftrace_enabled ; 
 int /*<<< orphan*/  pstore_ftrace_lock ; 
 int /*<<< orphan*/  pstore_ftrace_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	FUNC1(&pstore_ftrace_lock);
	if (pstore_ftrace_enabled) {
		FUNC3(&pstore_ftrace_ops);
		pstore_ftrace_enabled = false;
	}
	FUNC2(&pstore_ftrace_lock);

	FUNC0(pstore_ftrace_dir);
}