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
struct syscall_arg {unsigned long val; int /*<<< orphan*/  show_string_prefix; int /*<<< orphan*/  thread; } ;
struct file {scalar_t__ dev_maj; } ;

/* Variables and functions */
 scalar_t__ USB_DEVICE_MAJOR ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 size_t FUNC2 (unsigned long,char*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC4 (struct syscall_arg*,int /*<<< orphan*/ ) ; 
 struct file* FUNC5 (int /*<<< orphan*/ ,int) ; 

size_t FUNC6(char *bf, size_t size, struct syscall_arg *arg)
{
	unsigned long cmd = arg->val;
	int fd = FUNC4(arg, 0);
	struct file *file = FUNC5(arg->thread, fd);

	if (file != NULL) {
		if (file->dev_maj == USB_DEVICE_MAJOR)
			return FUNC3(FUNC1(cmd), FUNC0(cmd), bf, size);
	}

	return FUNC2(cmd, bf, size, arg->show_string_prefix);
}