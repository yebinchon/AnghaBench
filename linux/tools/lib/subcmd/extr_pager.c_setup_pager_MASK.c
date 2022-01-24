#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct winsize {int /*<<< orphan*/  ws_col; } ;
struct TYPE_5__ {char const** argv; int in; int /*<<< orphan*/  preexec_cb; } ;
struct TYPE_4__ {char* pager_env; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 char* forced_pager ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,struct winsize*) ; 
 scalar_t__ FUNC6 (int) ; 
 char const** pager_argv ; 
 int /*<<< orphan*/  pager_columns ; 
 int /*<<< orphan*/  pager_preexec ; 
 TYPE_2__ pager_process ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int spawned_pager ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 TYPE_1__ subcmd_config ; 
 int /*<<< orphan*/  wait_for_pager ; 
 int /*<<< orphan*/  wait_for_pager_signal ; 

void FUNC10(void)
{
	const char *pager = FUNC4(subcmd_config.pager_env);
	struct winsize sz;

	if (forced_pager)
		pager = forced_pager;
	if (!FUNC6(1) && !forced_pager)
		return;
	if (FUNC5(1, TIOCGWINSZ, &sz) == 0)
		pager_columns = sz.ws_col;
	if (!pager)
		pager = FUNC4("PAGER");
	if (!(pager || FUNC0("/usr/bin/pager", X_OK)))
		pager = "/usr/bin/pager";
	if (!(pager || FUNC0("/usr/bin/less", X_OK)))
		pager = "/usr/bin/less";
	if (!pager)
		pager = "cat";
	if (!*pager || !FUNC9(pager, "cat"))
		return;

	spawned_pager = 1; /* means we are emitting to terminal */

	/* spawn the pager */
	pager_argv[2] = pager;
	pager_process.argv = pager_argv;
	pager_process.in = -1;
	pager_process.preexec_cb = pager_preexec;

	if (FUNC8(&pager_process))
		return;

	/* original process continues, but writes to the pipe */
	FUNC3(pager_process.in, 1);
	if (FUNC6(2))
		FUNC3(pager_process.in, 2);
	FUNC2(pager_process.in);

	/* this makes sure that the parent terminates after the pager */
	FUNC7(wait_for_pager_signal);
	FUNC1(wait_for_pager);
}