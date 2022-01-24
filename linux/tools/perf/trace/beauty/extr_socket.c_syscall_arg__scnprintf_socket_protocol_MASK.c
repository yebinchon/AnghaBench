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
 int AF_INET ; 
 int AF_INET6 ; 
 size_t FUNC0 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char*,size_t,struct syscall_arg*) ; 
 int FUNC2 (struct syscall_arg*,int /*<<< orphan*/ ) ; 

size_t FUNC3(char *bf, size_t size, struct syscall_arg *arg)
{
	int domain = FUNC2(arg, 0);

	if (domain == AF_INET || domain == AF_INET6)
		return FUNC0(arg->val, bf, size, arg->show_string_prefix);

	return FUNC1(bf, size, arg);
}