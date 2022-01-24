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
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,...) ; 
 int FUNC7 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigalrm ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(int argc, char **argv)
{
	int opt;
	bool succeeded = true;
	struct sigaction act;
	int wr, wp, size;
	bool result;

	FUNC3();
	FUNC4(213);

	act.sa_handler = sigalrm;
	FUNC9(&act.sa_mask);
	act.sa_flags = 0;
	FUNC8(SIGALRM, &act, NULL);
	for (size = 1; size <= 32; size = size*2) {
		for (wr = 0; wr <= 32; wr = wr + size) {
			for (wp = wr - size; wp <= wr + size; wp = wp + size) {
				result = FUNC7(size, FUNC0(size, 8), wr, wp);
				if ((result && wr == wp) ||
				    (!result && wr != wp))
					FUNC6(
						"Test size = %d write offset = %d watchpoint offset = %d\n",
						size, wr, wp);
				else {
					FUNC5(
						"Test size = %d write offset = %d watchpoint offset = %d\n",
						size, wr, wp);
					succeeded = false;
				}
			}
		}
	}

	for (size = 1; size <= 32; size = size*2) {
		if (FUNC7(size, 8, -size, -8))
			FUNC6(
				"Test size = %d write offset = %d watchpoint offset = -8\n",
				size, -size);
		else {
			FUNC5(
				"Test size = %d write offset = %d watchpoint offset = -8\n",
				size, -size);
			succeeded = false;
		}
	}

	if (succeeded)
		FUNC2();
	else
		FUNC1();
}