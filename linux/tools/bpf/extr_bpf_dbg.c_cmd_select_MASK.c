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
 int CMD_ERR ; 
 int CMD_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*) ; 
 unsigned int FUNC7 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(char *num)
{
	unsigned int which, i;
	bool have_next = true;

	if (!FUNC2() || FUNC6(num) == 0)
		return CMD_ERR;

	which = FUNC7(num, NULL, 10);
	if (which == 0) {
		FUNC5("packet count starts with 1, clamping!\n");
		which = 1;
	}

	FUNC4();
	FUNC0();

	for (i = 0; i < which && (have_next = FUNC3()); i++)
		/* noop */;
	if (!have_next || FUNC1() == NULL) {
		FUNC5("no packet #%u available!\n", which);
		FUNC4();
		return CMD_ERR;
	}

	return CMD_OK;
}