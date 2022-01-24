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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  perf_tui_eops ; 
 scalar_t__ tui_helpline__set ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ui_helpline__last_msg ; 

void FUNC6(bool wait_for_ok)
{
	if (wait_for_ok && tui_helpline__set)
		FUNC5("Fatal Error",
				    ui_helpline__last_msg,
				    "Press any key...", 0);

	FUNC3(1);
	FUNC1();
	FUNC2();
	FUNC0();

	FUNC4(&perf_tui_eops);
}