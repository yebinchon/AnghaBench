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
struct bpf_labels {int /*<<< orphan*/  count; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  msg2 ;
typedef  int /*<<< orphan*/  msg1 ;
typedef  int /*<<< orphan*/  filter ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 struct sock_filter ALLOW ; 
 struct sock_filter FUNC0 (int) ; 
 struct sock_filter DENY ; 
 struct sock_filter FUNC1 (unsigned long,struct sock_filter) ; 
 struct sock_filter FUNC2 (int,struct sock_filter) ; 
 struct sock_filter FUNC3 (int,struct sock_filter) ; 
 struct sock_filter FUNC4 (unsigned long,struct sock_filter) ; 
 struct sock_filter FUNC5 (struct bpf_labels*,int /*<<< orphan*/ ) ; 
 struct sock_filter FUNC6 (struct bpf_labels*,int /*<<< orphan*/ ) ; 
 struct sock_filter LOAD_SYSCALL_NR ; 
 int /*<<< orphan*/  PR_SET_NO_NEW_PRIVS ; 
 int /*<<< orphan*/  PR_SET_SECCOMP ; 
 int /*<<< orphan*/  SECCOMP_MODE_FILTER ; 
 unsigned long STDERR_FILENO ; 
 unsigned long STDIN_FILENO ; 
 unsigned long STDOUT_FILENO ; 
 struct sock_filter FUNC7 (int /*<<< orphan*/ ,struct sock_filter) ; 
 int /*<<< orphan*/  __NR_exit ; 
 int /*<<< orphan*/  __NR_exit_group ; 
 int /*<<< orphan*/  __NR_read ; 
 int /*<<< orphan*/  __NR_write ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_labels*,struct sock_filter*,int) ; 
 int /*<<< orphan*/  buf_len ; 
 int /*<<< orphan*/  msg1_len ; 
 int /*<<< orphan*/  msg2_len ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,struct sock_fprog*,...) ; 
 int /*<<< orphan*/  read ; 
 int FUNC11 (char const*) ; 
 int FUNC12 (int /*<<< orphan*/ ,unsigned long,char const*,int) ; 
 int /*<<< orphan*/  write_buf ; 
 int /*<<< orphan*/  write_fd ; 

int FUNC13(int argc, char **argv)
{
	struct bpf_labels l = {
		.count = 0,
	};
	static const char msg1[] = "Please type something: ";
	static const char msg2[] = "You typed: ";
	char buf[256];
	struct sock_filter filter[] = {
		/* TODO: LOAD_SYSCALL_NR(arch) and enforce an arch */
		LOAD_SYSCALL_NR,
		FUNC7(__NR_exit, ALLOW),
		FUNC7(__NR_exit_group, ALLOW),
		FUNC7(__NR_write, FUNC5(&l, write_fd)),
		FUNC7(__NR_read, FUNC5(&l, read)),
		DENY,  /* Don't passthrough into a label */

		FUNC6(&l, read),
		FUNC0(0),
		FUNC4(STDIN_FILENO, DENY),
		FUNC0(1),
		FUNC4((unsigned long)buf, DENY),
		FUNC0(2),
		FUNC2(sizeof(buf), DENY),
		ALLOW,

		FUNC6(&l, write_fd),
		FUNC0(0),
		FUNC1(STDOUT_FILENO, FUNC5(&l, write_buf)),
		FUNC1(STDERR_FILENO, FUNC5(&l, write_buf)),
		DENY,

		FUNC6(&l, write_buf),
		FUNC0(1),
		FUNC1((unsigned long)msg1, FUNC5(&l, msg1_len)),
		FUNC1((unsigned long)msg2, FUNC5(&l, msg2_len)),
		FUNC1((unsigned long)buf, FUNC5(&l, buf_len)),
		DENY,

		FUNC6(&l, msg1_len),
		FUNC0(2),
		FUNC3(sizeof(msg1), ALLOW),
		DENY,

		FUNC6(&l, msg2_len),
		FUNC0(2),
		FUNC3(sizeof(msg2), ALLOW),
		DENY,

		FUNC6(&l, buf_len),
		FUNC0(2),
		FUNC3(sizeof(buf), ALLOW),
		DENY,
	};
	struct sock_fprog prog = {
		.filter = filter,
		.len = (unsigned short)(sizeof(filter)/sizeof(filter[0])),
	};
	ssize_t bytes;
	FUNC8(&l, filter, sizeof(filter)/sizeof(*filter));

	if (FUNC10(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0)) {
		FUNC9("prctl(NO_NEW_PRIVS)");
		return 1;
	}

	if (FUNC10(PR_SET_SECCOMP, SECCOMP_MODE_FILTER, &prog)) {
		FUNC9("prctl(SECCOMP)");
		return 1;
	}
	FUNC12(__NR_write, STDOUT_FILENO, msg1, FUNC11(msg1));
	bytes = FUNC12(__NR_read, STDIN_FILENO, buf, sizeof(buf)-1);
	bytes = (bytes > 0 ? bytes : 0);
	FUNC12(__NR_write, STDERR_FILENO, msg2, FUNC11(msg2));
	FUNC12(__NR_write, STDERR_FILENO, buf, bytes);
	/* Now get killed */
	FUNC12(__NR_write, STDERR_FILENO, msg2, FUNC11(msg2)+2);
	return 0;
}