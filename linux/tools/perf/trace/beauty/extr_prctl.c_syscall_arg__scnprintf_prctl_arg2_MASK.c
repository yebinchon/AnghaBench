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
struct syscall_arg {int /*<<< orphan*/  show_string_prefix; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int PR_SET_MM ; 
 int PR_SET_NAME ; 
 size_t FUNC0 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char*,size_t,struct syscall_arg*) ; 
 size_t FUNC2 (char*,size_t,struct syscall_arg*) ; 
 int FUNC3 (struct syscall_arg*,int /*<<< orphan*/ ) ; 

size_t FUNC4(char *bf, size_t size, struct syscall_arg *arg)
{
	int option = FUNC3(arg, 0);

	if (option == PR_SET_MM)
		return FUNC0(arg->val, bf, size, arg->show_string_prefix);
	/*
	 * We still don't grab the contents of pointers on entry or exit,
	 * so just print them as hex numbers
	 */
	if (option == PR_SET_NAME)
		return FUNC1(bf, size, arg);

	return FUNC2(bf, size, arg);
}