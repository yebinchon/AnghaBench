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
struct syscall_arg {int dummy; } ;

/* Variables and functions */
 int PR_SET_MM ; 
 size_t FUNC0 (char*,size_t,struct syscall_arg*) ; 
 size_t FUNC1 (char*,size_t,struct syscall_arg*) ; 
 int FUNC2 (struct syscall_arg*,int /*<<< orphan*/ ) ; 

size_t FUNC3(char *bf, size_t size, struct syscall_arg *arg)
{
	int option = FUNC2(arg, 0);

	if (option == PR_SET_MM)
		return FUNC0(bf, size, arg);

	return FUNC1(bf, size, arg);
}