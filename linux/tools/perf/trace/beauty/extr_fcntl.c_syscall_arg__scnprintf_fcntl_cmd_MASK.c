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
struct syscall_arg {scalar_t__ val; int mask; } ;

/* Variables and functions */
 scalar_t__ F_DUPFD ; 
 scalar_t__ F_DUPFD_CLOEXEC ; 
 scalar_t__ F_GETFD ; 
 scalar_t__ F_GETFL ; 
 scalar_t__ F_GETLEASE ; 
 scalar_t__ F_GETOWN ; 
 scalar_t__ F_GETSIG ; 
 scalar_t__ F_GET_SEALS ; 
 int /*<<< orphan*/  syscall_arg__scnprintf_fcntl_getfd ; 
 int /*<<< orphan*/  syscall_arg__scnprintf_fcntl_getlease ; 
 int /*<<< orphan*/  syscall_arg__scnprintf_fd ; 
 int /*<<< orphan*/  syscall_arg__scnprintf_open_flags ; 
 int /*<<< orphan*/  syscall_arg__scnprintf_pid ; 
 size_t FUNC0 (char*,size_t,struct syscall_arg*) ; 
 int /*<<< orphan*/  FUNC1 (struct syscall_arg*,int /*<<< orphan*/ ) ; 

size_t FUNC2(char *bf, size_t size, struct syscall_arg *arg)
{
	if (arg->val == F_GETFL) {
		FUNC1(arg, syscall_arg__scnprintf_open_flags);
		goto mask_arg;
	}
	if (arg->val == F_GETFD) {
		FUNC1(arg, syscall_arg__scnprintf_fcntl_getfd);
		goto mask_arg;
	}
	if (arg->val == F_DUPFD_CLOEXEC || arg->val == F_DUPFD) {
		FUNC1(arg, syscall_arg__scnprintf_fd);
		goto out;
	}
	if (arg->val == F_GETOWN) {
		FUNC1(arg, syscall_arg__scnprintf_pid);
		goto mask_arg;
	}
	if (arg->val == F_GETLEASE) {
		FUNC1(arg, syscall_arg__scnprintf_fcntl_getlease);
		goto mask_arg;
	}
	/*
	 * Some commands ignore the third fcntl argument, "arg", so mask it
	 */
	if (arg->val == F_GET_SEALS ||
	    arg->val == F_GETSIG) {
mask_arg:
		arg->mask |= (1 << 2);
	}
out:
	return FUNC0(bf, size, arg);
}