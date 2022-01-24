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
 int /*<<< orphan*/  TCP_FO_SYSCTL ; 
 int /*<<< orphan*/  TCP_SYNCOOKIE_SYSCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  restore_sysctls ; 
 void* saved_tcp_fo ; 
 void* saved_tcp_syncookie ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(int argc, const char **argv)
{
	FUNC2();
	FUNC5();
	saved_tcp_fo = FUNC6(TCP_FO_SYSCTL);
	saved_tcp_syncookie = FUNC6(TCP_SYNCOOKIE_SYSCTL);
	FUNC4();
	FUNC3();
	FUNC0(restore_sysctls);

	FUNC7();

	FUNC1();
	return 0;
}