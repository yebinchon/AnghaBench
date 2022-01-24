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
struct kernel_clone_args {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_VM ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kernel_clone_args*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  init_struct_pid ; 

struct task_struct *FUNC5(int cpu)
{
	struct task_struct *task;
	struct kernel_clone_args args = {
		.flags = CLONE_VM,
	};

	task = FUNC1(&init_struct_pid, 0, FUNC2(cpu), &args);
	if (!FUNC0(task)) {
		FUNC4(task);
		FUNC3(task, cpu);
	}

	return task;
}