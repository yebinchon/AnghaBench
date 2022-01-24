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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  core_even ; 
 int /*<<< orphan*/  core_odd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initialize_counters ; 
 int /*<<< orphan*/  package_even ; 
 int /*<<< orphan*/  package_odd ; 
 int /*<<< orphan*/  thread_even ; 
 int /*<<< orphan*/  thread_odd ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	FUNC5();
	FUNC2();
	FUNC1();
	FUNC0(&thread_even, &core_even, &package_even);
	FUNC0(&thread_odd, &core_odd, &package_odd);
	FUNC3();
	FUNC4(initialize_counters);
}