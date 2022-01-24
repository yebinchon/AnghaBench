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
 char* PERF_GTK_DSO ; 
 scalar_t__ dump_trace ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int use_browser ; 

void FUNC6(bool fallback_to_pager)
{
	if (use_browser < 2 && (!FUNC0(1) || dump_trace))
		use_browser = 0;

	/* default to TUI */
	if (use_browser < 0)
		use_browser = 1;

	switch (use_browser) {
	case 2:
		if (FUNC2() == 0)
			break;
		FUNC1("GTK browser requested but could not find %s\n",
		       PERF_GTK_DSO);
		FUNC4(1);
		use_browser = 1;
		/* fall through */
	case 1:
		if (FUNC5() == 0)
			break;
		/* fall through */
	default:
		use_browser = 0;
		if (fallback_to_pager)
			FUNC3();
		break;
	}
}