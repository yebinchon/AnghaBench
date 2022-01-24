#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ si_code; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_CONT ; 
 int /*<<< orphan*/  PTRACE_GETSIGINFO ; 
 int /*<<< orphan*/  SIGKILL ; 
 scalar_t__ SIGSTOP ; 
 scalar_t__ SIGTRAP ; 
 scalar_t__ TRAP_HWBKPT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  __WALL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC13(int wr_size, int wp_size, int wr, int wp)
{
	int status;
	siginfo_t siginfo;
	pid_t pid = FUNC5();
	pid_t wpid;

	if (pid < 0) {
		FUNC8(
			"fork() failed: %s\n", FUNC11(errno));
		return false;
	}
	if (pid == 0)
		FUNC4(wr_size, wr);

	wpid = FUNC12(pid, &status, __WALL);
	if (wpid != pid) {
		FUNC7(
			"waitpid() failed: %s\n", FUNC11(errno));
		return false;
	}
	if (!FUNC1(status)) {
		FUNC7(
			"child did not stop: %s\n", FUNC11(errno));
		return false;
	}
	if (FUNC2(status) != SIGSTOP) {
		FUNC7("child did not stop with SIGSTOP\n");
		return false;
	}

	if (!FUNC10(pid, wp_size, wp))
		return false;

	if (FUNC9(PTRACE_CONT, pid, NULL, NULL) < 0) {
		FUNC7(
			"ptrace(PTRACE_SINGLESTEP) failed: %s\n",
			FUNC11(errno));
		return false;
	}

	FUNC3(3);
	wpid = FUNC12(pid, &status, __WALL);
	if (wpid != pid) {
		FUNC7(
			"waitpid() failed: %s\n", FUNC11(errno));
		return false;
	}
	FUNC3(0);
	if (FUNC0(status)) {
		FUNC7("child did not single-step\n");
		return false;
	}
	if (!FUNC1(status)) {
		FUNC7("child did not stop\n");
		return false;
	}
	if (FUNC2(status) != SIGTRAP) {
		FUNC7("child did not stop with SIGTRAP\n");
		return false;
	}
	if (FUNC9(PTRACE_GETSIGINFO, pid, NULL, &siginfo) != 0) {
		FUNC7(
			"ptrace(PTRACE_GETSIGINFO): %s\n",
			FUNC11(errno));
		return false;
	}
	if (siginfo.si_code != TRAP_HWBKPT) {
		FUNC7(
			"Unexpected si_code %d\n", siginfo.si_code);
		return false;
	}

	FUNC6(pid, SIGKILL);
	wpid = FUNC12(pid, &status, 0);
	if (wpid != pid) {
		FUNC7(
			"waitpid() failed: %s\n", FUNC11(errno));
		return false;
	}
	return true;
}