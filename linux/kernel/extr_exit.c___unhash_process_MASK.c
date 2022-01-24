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
struct task_struct {int /*<<< orphan*/  thread_node; int /*<<< orphan*/  thread_group; int /*<<< orphan*/  sibling; int /*<<< orphan*/  tasks; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_PGID ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  PIDTYPE_SID ; 
 int /*<<< orphan*/  PIDTYPE_TGID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_threads ; 
 int /*<<< orphan*/  process_counts ; 

__attribute__((used)) static void FUNC4(struct task_struct *p, bool group_dead)
{
	nr_threads--;
	FUNC1(p, PIDTYPE_PID);
	if (group_dead) {
		FUNC1(p, PIDTYPE_TGID);
		FUNC1(p, PIDTYPE_PGID);
		FUNC1(p, PIDTYPE_SID);

		FUNC3(&p->tasks);
		FUNC2(&p->sibling);
		FUNC0(process_counts);
	}
	FUNC3(&p->thread_group);
	FUNC3(&p->thread_node);
}