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
struct sock_fprog {unsigned short len; struct sock_filter* filter; } ;
struct sock_filter {int dummy; } ;
typedef  int /*<<< orphan*/  filter ;

/* Variables and functions */
 scalar_t__ BPF_ABS ; 
 scalar_t__ BPF_JEQ ; 
 scalar_t__ BPF_JMP ; 
 struct sock_filter FUNC0 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ BPF_K ; 
 scalar_t__ BPF_LD ; 
 scalar_t__ BPF_RET ; 
 struct sock_filter FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_W ; 
 int /*<<< orphan*/  PR_SET_NO_NEW_PRIVS ; 
 int /*<<< orphan*/  PR_SET_SECCOMP ; 
 int /*<<< orphan*/  SECCOMP_MODE_FILTER ; 
 int /*<<< orphan*/  SECCOMP_RET_ALLOW ; 
 int /*<<< orphan*/  SECCOMP_RET_KILL ; 
 int /*<<< orphan*/  SECCOMP_RET_TRAP ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  __NR_exit ; 
 int /*<<< orphan*/  __NR_exit_group ; 
 int /*<<< orphan*/  __NR_read ; 
 int /*<<< orphan*/  __NR_rt_sigreturn ; 
 int /*<<< orphan*/  __NR_sigreturn ; 
 int /*<<< orphan*/  __NR_write ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,struct sock_fprog*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  syscall_nr ; 

__attribute__((used)) static int FUNC5(void)
{
	struct sock_filter filter[] = {
		/* Grab the system call number */
		FUNC1(BPF_LD+BPF_W+BPF_ABS, syscall_nr),
		/* Jump table for the allowed syscalls */
		FUNC0(BPF_JMP+BPF_JEQ+BPF_K, __NR_rt_sigreturn, 0, 1),
		FUNC1(BPF_RET+BPF_K, SECCOMP_RET_ALLOW),
#ifdef __NR_sigreturn
		BPF_JUMP(BPF_JMP+BPF_JEQ+BPF_K, __NR_sigreturn, 0, 1),
		BPF_STMT(BPF_RET+BPF_K, SECCOMP_RET_ALLOW),
#endif
		FUNC0(BPF_JMP+BPF_JEQ+BPF_K, __NR_exit_group, 0, 1),
		FUNC1(BPF_RET+BPF_K, SECCOMP_RET_ALLOW),
		FUNC0(BPF_JMP+BPF_JEQ+BPF_K, __NR_exit, 0, 1),
		FUNC1(BPF_RET+BPF_K, SECCOMP_RET_ALLOW),
		FUNC0(BPF_JMP+BPF_JEQ+BPF_K, __NR_read, 1, 0),
		FUNC0(BPF_JMP+BPF_JEQ+BPF_K, __NR_write, 3, 2),

		/* Check that read is only using stdin. */
		FUNC1(BPF_LD+BPF_W+BPF_ABS, FUNC4(0)),
		FUNC0(BPF_JMP+BPF_JEQ+BPF_K, STDIN_FILENO, 4, 0),
		FUNC1(BPF_RET+BPF_K, SECCOMP_RET_KILL),

		/* Check that write is only using stdout */
		FUNC1(BPF_LD+BPF_W+BPF_ABS, FUNC4(0)),
		FUNC0(BPF_JMP+BPF_JEQ+BPF_K, STDOUT_FILENO, 1, 0),
		/* Trap attempts to write to stderr */
		FUNC0(BPF_JMP+BPF_JEQ+BPF_K, STDERR_FILENO, 1, 2),

		FUNC1(BPF_RET+BPF_K, SECCOMP_RET_ALLOW),
		FUNC1(BPF_RET+BPF_K, SECCOMP_RET_TRAP),
		FUNC1(BPF_RET+BPF_K, SECCOMP_RET_KILL),
	};
	struct sock_fprog prog = {
		.len = (unsigned short)(sizeof(filter)/sizeof(filter[0])),
		.filter = filter,
	};

	if (FUNC3(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0)) {
		FUNC2("prctl(NO_NEW_PRIVS)");
		return 1;
	}


	if (FUNC3(PR_SET_SECCOMP, SECCOMP_MODE_FILTER, &prog)) {
		FUNC2("prctl");
		return 1;
	}
	return 0;
}