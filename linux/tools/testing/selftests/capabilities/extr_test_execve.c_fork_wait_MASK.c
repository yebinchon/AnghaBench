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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ mpid ; 
 scalar_t__ nerrs ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(void)
{
	pid_t child = FUNC2();
	if (child == 0) {
		nerrs = 0;
		return true;
	} else if (child > 0) {
		int status;
		if (FUNC8(child, &status, 0) != child ||
		    !FUNC1(status)) {
			FUNC5("Child died\n");
			nerrs++;
		} else if (FUNC0(status) != 0) {
			FUNC5("Child failed\n");
			nerrs++;
		} else {
			/* don't print this message for mpid */
			if (FUNC3() != mpid)
				FUNC6("Passed\n");
		}
		return false;
	} else {
		FUNC4("fork - %s\n", FUNC7(errno));
		return false;
	}
}