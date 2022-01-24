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
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  ui__lock ; 

int FUNC5(const char *title, const char *text,
			const char *exit_msg, int delay_secs)
{
	FUNC2(&ui__lock);
	FUNC1(title, text, exit_msg);
	FUNC0();
	FUNC3(&ui__lock);
	return FUNC4(delay_secs);
}