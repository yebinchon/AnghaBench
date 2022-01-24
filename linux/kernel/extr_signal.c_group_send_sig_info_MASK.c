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
struct task_struct {int dummy; } ;
struct kernel_siginfo {int dummy; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 int FUNC0 (int,struct kernel_siginfo*,struct task_struct*) ; 
 int FUNC1 (int,struct kernel_siginfo*,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(int sig, struct kernel_siginfo *info,
			struct task_struct *p, enum pid_type type)
{
	int ret;

	FUNC2();
	ret = FUNC0(sig, info, p);
	FUNC3();

	if (!ret && sig)
		ret = FUNC1(sig, info, p, type);

	return ret;
}