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
typedef  int /*<<< orphan*/  file ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  emacs_meta_keymap ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  intr_shell ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  rl_attempted_completion_function ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ rl_catch_signals ; 
 int rl_catch_sigwinch ; 
 int /*<<< orphan*/  rl_complete ; 
 int /*<<< orphan*/ * rl_instream ; 
 int /*<<< orphan*/ * rl_outstream ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* rl_readline_name ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* rl_terminal_name ; 
 int /*<<< orphan*/  shell_completion ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 

__attribute__((used)) static void FUNC9(FILE *fin, FILE *fout)
{
	char file[128];

	FUNC8(file, sizeof(file), "%s/.bpf_dbg_history", FUNC0("HOME"));
	FUNC1(file);

	rl_instream = fin;
	rl_outstream = fout;

	rl_readline_name = "bpf_dbg";
	rl_terminal_name = FUNC0("TERM");

	rl_catch_signals = 0;
	rl_catch_sigwinch = 1;

	rl_attempted_completion_function = shell_completion;

	FUNC2('\t', rl_complete);

	FUNC3('\t', rl_complete, emacs_meta_keymap);
	FUNC3('\033', rl_complete, emacs_meta_keymap);

	FUNC8(file, sizeof(file), "%s/.bpf_dbg_init", FUNC0("HOME"));
	FUNC5(file);

	FUNC4(0);
	FUNC6();

	FUNC7(SIGINT, intr_shell);
}