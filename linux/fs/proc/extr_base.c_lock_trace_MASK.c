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
struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {int /*<<< orphan*/  cred_guard_mutex; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  PTRACE_MODE_ATTACH_FSCREDS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct task_struct *task)
{
	int err = FUNC0(&task->signal->cred_guard_mutex);
	if (err)
		return err;
	if (!FUNC2(task, PTRACE_MODE_ATTACH_FSCREDS)) {
		FUNC1(&task->signal->cred_guard_mutex);
		return -EPERM;
	}
	return 0;
}