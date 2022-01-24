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
struct syscall_arg {int val; int /*<<< orphan*/  trace; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 size_t FUNC0 (char*,size_t,char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

size_t FUNC2(char *bf, size_t size, struct syscall_arg *arg)
{
	int fd = arg->val;
	size_t printed = FUNC0(bf, size, "%d", fd);
	const char *path = FUNC1(arg->thread, fd, arg->trace);

	if (path)
		printed += FUNC0(bf + printed, size - printed, "<%s>", path);

	return printed;
}