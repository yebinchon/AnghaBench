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
struct syscall_arg {int show_string_prefix; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int F_DUPFD ; 
 int F_GETLK ; 
 int F_GETOWN_EX ; 
 int F_GET_FILE_RW_HINT ; 
 int F_GET_RW_HINT ; 
 int F_OFD_GETLK ; 
 int F_OFD_SETLK ; 
 int F_OFD_SETLKW ; 
 int F_SETFD ; 
 int F_SETFL ; 
 int F_SETLEASE ; 
 int F_SETLK ; 
 int F_SETLKW ; 
 int F_SETOWN ; 
 int F_SETOWN_EX ; 
 int F_SET_FILE_RW_HINT ; 
 int F_SET_RW_HINT ; 
 size_t FUNC0 (int /*<<< orphan*/ ,char*,size_t,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,char*,size_t,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,char*,size_t,int) ; 
 size_t FUNC3 (char*,size_t,struct syscall_arg*) ; 
 size_t FUNC4 (char*,size_t,struct syscall_arg*) ; 
 size_t FUNC5 (char*,size_t,struct syscall_arg*) ; 
 size_t FUNC6 (char*,size_t,struct syscall_arg*) ; 
 int FUNC7 (struct syscall_arg*,int) ; 

size_t FUNC8(char *bf, size_t size, struct syscall_arg *arg)
{
	bool show_prefix = arg->show_string_prefix;
	int cmd = FUNC7(arg, 1);

	if (cmd == F_DUPFD)
		return FUNC3(bf, size, arg);

	if (cmd == F_SETFD)
		return FUNC0(arg->val, bf, size, show_prefix);

	if (cmd == F_SETFL)
		return FUNC2(arg->val, bf, size, show_prefix);

	if (cmd == F_SETOWN)
		return FUNC6(bf, size, arg);

	if (cmd == F_SETLEASE)
		return FUNC1(arg->val, bf, size, show_prefix);
	/*
	 * We still don't grab the contents of pointers on entry or exit,
	 * so just print them as hex numbers
	 */
	if (cmd == F_SETLK || cmd == F_SETLKW || cmd == F_GETLK ||
	    cmd == F_OFD_SETLK || cmd == F_OFD_SETLKW || cmd == F_OFD_GETLK ||
	    cmd == F_GETOWN_EX || cmd == F_SETOWN_EX ||
	    cmd == F_GET_RW_HINT || cmd == F_SET_RW_HINT ||
	    cmd == F_GET_FILE_RW_HINT || cmd == F_SET_FILE_RW_HINT)
		return FUNC4(bf, size, arg);

	return FUNC5(bf, size, arg);
}