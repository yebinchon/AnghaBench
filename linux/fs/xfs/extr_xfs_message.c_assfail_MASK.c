#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ bug_on_assert; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,int) ; 
 TYPE_1__ xfs_globals ; 

void
FUNC3(char *expr, char *file, int line)
{
	FUNC2(NULL, "Assertion failed: %s, file: %s, line: %d",
		expr, file, line);
	if (xfs_globals.bug_on_assert)
		FUNC0();
	else
		FUNC1(1);
}