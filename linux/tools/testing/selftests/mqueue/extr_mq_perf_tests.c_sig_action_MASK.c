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
typedef  int /*<<< orphan*/  siginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ main_thread ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC5(int signum, siginfo_t *info, void *context)
{
	if (FUNC3() != main_thread)
		FUNC2(main_thread, signum);
	else {
		FUNC1(stderr, "Caught signal %d, exiting\n", signum);
		FUNC4(0, "", 0);
		FUNC1(stderr, "\n\nReturned from shutdown?!?!\n\n");
		FUNC0(0);
	}
}