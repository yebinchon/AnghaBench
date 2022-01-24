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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kgdb_active ; 
 int /*<<< orphan*/  kgdb_break_tasklet_var ; 
 int /*<<< orphan*/  kgdb_setting_breakpoint ; 
 int /*<<< orphan*/  kgdb_tasklet_breakpoint ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	if (FUNC1(&kgdb_break_tasklet_var) ||
		FUNC1(&kgdb_active) != -1 ||
		FUNC1(&kgdb_setting_breakpoint))
		return;
	FUNC0(&kgdb_break_tasklet_var);
	FUNC2(&kgdb_tasklet_breakpoint);
}