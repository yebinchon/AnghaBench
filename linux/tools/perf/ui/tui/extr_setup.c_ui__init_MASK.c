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
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SL_KEY_UNTAB ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  perf_tui_eops ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  ui__signal ; 
 int /*<<< orphan*/  ui__signal_backtrace ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14(void)
{
	int err;

	FUNC6(-1);
	FUNC5();
	FUNC4();

	err = FUNC3();
	if (err < 0)
		goto out;
	err = FUNC0(-1, 0, 0);
	if (err < 0)
		goto out;

	err = FUNC2();
	if (err < 0) {
		FUNC9("TUI initialization failed.\n");
		goto out;
	}

	FUNC1((char *)"^(kB)", SL_KEY_UNTAB);

	FUNC10(SIGSEGV, ui__signal_backtrace);
	FUNC10(SIGFPE, ui__signal_backtrace);
	FUNC10(SIGINT, ui__signal);
	FUNC10(SIGQUIT, ui__signal);
	FUNC10(SIGTERM, ui__signal);

	FUNC8(&perf_tui_eops);

	FUNC13();
	FUNC12();
	FUNC11();

	FUNC7();
out:
	return err;
}