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
struct task_struct {TYPE_1__* nsproxy; } ;
struct ns_common {int dummy; } ;
struct pid_namespace {struct ns_common ns; int /*<<< orphan*/  child_reaper; } ;
struct TYPE_2__ {struct pid_namespace* pid_ns_for_children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC1 (struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 

__attribute__((used)) static struct ns_common *FUNC6(struct task_struct *task)
{
	struct pid_namespace *ns = NULL;

	FUNC4(task);
	if (task->nsproxy) {
		ns = task->nsproxy->pid_ns_for_children;
		FUNC0(ns);
	}
	FUNC5(task);

	if (ns) {
		FUNC2(&tasklist_lock);
		if (!ns->child_reaper) {
			FUNC1(ns);
			ns = NULL;
		}
		FUNC3(&tasklist_lock);
	}

	return ns ? &ns->ns : NULL;
}