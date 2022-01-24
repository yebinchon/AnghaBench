#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* native; } ;
struct user_arg_ptr {TYPE_1__ ptr; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct user_arg_ptr,struct user_arg_ptr,int /*<<< orphan*/ ,struct file*) ; 

int FUNC1(struct file *file, void *__argv, void *__envp)
{
	struct user_arg_ptr argv = { .ptr.native = __argv };
	struct user_arg_ptr envp = { .ptr.native = __envp };

	return FUNC0(AT_FDCWD, NULL, argv, envp, 0, file);
}