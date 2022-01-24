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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * bpf_image ; 
 unsigned int bpf_prog_len ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 unsigned int FUNC8 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(char *subcmd)
{
	if (!FUNC2())
		return CMD_ERR;
	if (FUNC7(subcmd) == 0)
		FUNC1();
	else if (FUNC5(subcmd, "reset") == 0)
		FUNC3();
	else {
		unsigned int where = FUNC8(subcmd, NULL, 10);

		if (where < bpf_prog_len) {
			FUNC4(where);
			FUNC6("breakpoint at: ");
			FUNC0(bpf_image[where], where);
		}
	}

	return CMD_OK;
}