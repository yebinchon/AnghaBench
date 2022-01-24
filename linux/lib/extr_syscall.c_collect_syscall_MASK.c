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
struct task_struct {int dummy; } ;
struct TYPE_2__ {int nr; int /*<<< orphan*/ * args; int /*<<< orphan*/  instruction_pointer; } ;
struct syscall_info {TYPE_1__ data; int /*<<< orphan*/  sp; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct syscall_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,struct pt_regs*,unsigned long*) ; 
 int FUNC4 (struct task_struct*,struct pt_regs*) ; 
 struct pt_regs* FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC9(struct task_struct *target, struct syscall_info *info)
{
	struct pt_regs *regs;

	if (!FUNC6(target)) {
		/* Task has no stack, so the task isn't in a syscall. */
		FUNC1(info, 0, sizeof(*info));
		info->data.nr = -1;
		return 0;
	}

	regs = FUNC5(target);
	if (FUNC7(!regs)) {
		FUNC2(target);
		return -EAGAIN;
	}

	info->sp = FUNC8(regs);
	info->data.instruction_pointer = FUNC0(regs);

	info->data.nr = FUNC4(target, regs);
	if (info->data.nr != -1L)
		FUNC3(target, regs,
				      (unsigned long *)&info->data.args[0]);

	FUNC2(target);
	return 0;
}