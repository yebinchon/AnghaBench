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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(int argc, const char **argv)
{
	FUNC0("Usage of  cmd args | grep pattern:\n");
	FUNC0("  Any command's output may be filtered through an ");
	FUNC0("emulated 'pipe'.\n");
	FUNC0("  'grep' is just a key word.\n");
	FUNC0("  The pattern may include a very limited set of "
		   "metacharacters:\n");
	FUNC0("   pattern or ^pattern or pattern$ or ^pattern$\n");
	FUNC0("  And if there are spaces in the pattern, you may "
		   "quote it:\n");
	FUNC0("   \"pat tern\" or \"^pat tern\" or \"pat tern$\""
		   " or \"^pat tern$\"\n");
	return 0;
}