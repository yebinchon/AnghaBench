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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int pm_nosig_freezing ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int) ; 

int FUNC6(void)
{
	int error;

	FUNC3("Freezing remaining freezable tasks ... ");

	pm_nosig_freezing = true;
	error = FUNC5(false);
	if (!error)
		FUNC2("done.");

	FUNC2("\n");
	FUNC0(FUNC1());

	if (error)
		FUNC4();
	return error;
}