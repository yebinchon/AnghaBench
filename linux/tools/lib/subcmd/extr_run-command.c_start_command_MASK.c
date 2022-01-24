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
struct child_process {int in; int out; int err; scalar_t__ pid; int /*<<< orphan*/ * argv; scalar_t__ exec_cmd; int /*<<< orphan*/  (* preexec_cb ) () ;scalar_t__* env; scalar_t__ dir; scalar_t__ stdout_to_stderr; scalar_t__ no_stdout; scalar_t__ no_stderr; scalar_t__ no_stdin; } ;
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 int ENOENT ; 
 int ERR_RUN_COMMAND_EXEC ; 
 int ERR_RUN_COMMAND_FORK ; 
 int ERR_RUN_COMMAND_PIPE ; 
 int STRERR_BUFSIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char* const*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int) ; 
 scalar_t__ FUNC14 (scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 

int FUNC17(struct child_process *cmd)
{
	int need_in, need_out, need_err;
	int fdin[2], fdout[2], fderr[2];
	char sbuf[STRERR_BUFSIZE];

	/*
	 * In case of errors we must keep the promise to close FDs
	 * that have been passed in via ->in and ->out.
	 */

	need_in = !cmd->no_stdin && cmd->in < 0;
	if (need_in) {
		if (FUNC11(fdin) < 0) {
			if (cmd->out > 0)
				FUNC1(cmd->out);
			return -ERR_RUN_COMMAND_PIPE;
		}
		cmd->in = fdin[1];
	}

	need_out = !cmd->no_stdout
		&& !cmd->stdout_to_stderr
		&& cmd->out < 0;
	if (need_out) {
		if (FUNC11(fdout) < 0) {
			if (need_in)
				FUNC2(fdin);
			else if (cmd->in)
				FUNC1(cmd->in);
			return -ERR_RUN_COMMAND_PIPE;
		}
		cmd->out = fdout[0];
	}

	need_err = !cmd->no_stderr && cmd->err < 0;
	if (need_err) {
		if (FUNC11(fderr) < 0) {
			if (need_in)
				FUNC2(fdin);
			else if (cmd->in)
				FUNC1(cmd->in);
			if (need_out)
				FUNC2(fdout);
			else if (cmd->out)
				FUNC1(cmd->out);
			return -ERR_RUN_COMMAND_PIPE;
		}
		cmd->err = fderr[0];
	}

	FUNC9(NULL);
	cmd->pid = FUNC10();
	if (!cmd->pid) {
		if (cmd->no_stdin)
			FUNC5(0);
		else if (need_in) {
			FUNC4(fdin[0], 0);
			FUNC2(fdin);
		} else if (cmd->in) {
			FUNC4(cmd->in, 0);
			FUNC1(cmd->in);
		}

		if (cmd->no_stderr)
			FUNC5(2);
		else if (need_err) {
			FUNC4(fderr[1], 2);
			FUNC2(fderr);
		}

		if (cmd->no_stdout)
			FUNC5(1);
		else if (cmd->stdout_to_stderr)
			FUNC4(2, 1);
		else if (need_out) {
			FUNC4(fdout[1], 1);
			FUNC2(fdout);
		} else if (cmd->out > 1) {
			FUNC4(cmd->out, 1);
			FUNC1(cmd->out);
		}

		if (cmd->dir && FUNC0(cmd->dir))
			FUNC3("exec %s: cd to %s failed (%s)", cmd->argv[0],
			    cmd->dir, FUNC13(errno, sbuf, sizeof(sbuf)));
		if (cmd->env) {
			for (; *cmd->env; cmd->env++) {
				if (FUNC14(*cmd->env, '='))
					FUNC12((char*)*cmd->env);
				else
					FUNC16(*cmd->env);
			}
		}
		if (cmd->preexec_cb)
			cmd->preexec_cb();
		if (cmd->exec_cmd) {
			FUNC6(cmd->argv);
		} else {
			FUNC7(cmd->argv[0], (char *const*) cmd->argv);
		}
		FUNC8(127);
	}

	if (cmd->pid < 0) {
		int err = errno;
		if (need_in)
			FUNC2(fdin);
		else if (cmd->in)
			FUNC1(cmd->in);
		if (need_out)
			FUNC2(fdout);
		else if (cmd->out)
			FUNC1(cmd->out);
		if (need_err)
			FUNC2(fderr);
		return err == ENOENT ?
			-ERR_RUN_COMMAND_EXEC :
			-ERR_RUN_COMMAND_FORK;
	}

	if (need_in)
		FUNC1(fdin[0]);
	else if (cmd->in)
		FUNC1(cmd->in);

	if (need_out)
		FUNC1(fdout[1]);
	else if (cmd->out)
		FUNC1(cmd->out);

	if (need_err)
		FUNC1(fderr[1]);

	return 0;
}