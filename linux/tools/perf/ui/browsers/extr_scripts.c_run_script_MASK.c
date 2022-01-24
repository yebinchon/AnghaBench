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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC7 (char*) ; 

void FUNC8(char *cmd)
{
	FUNC4("Running %s\n", cmd);
	FUNC1();
	if (FUNC7(cmd) < 0)
		FUNC5("Cannot run %s\n", cmd);
	/*
	 * SLang doesn't seem to reset the whole terminal, so be more
	 * forceful to get back to the original state.
	 */
	FUNC6("\033[c\033[H\033[J");
	FUNC3(stdout);
	FUNC0(0, 0, 0);
	FUNC2();
}