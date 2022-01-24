#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_1__* signal; } ;
struct pid {int dummy; } ;
typedef  int pid_t ;
struct TYPE_4__ {struct task_struct* group_leader; } ;
struct TYPE_3__ {int leader; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  PIDTYPE_PGID ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC0 (struct pid*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pid*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct pid*) ; 
 struct pid* FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(void)
{
	struct task_struct *group_leader = current->group_leader;
	struct pid *sid = FUNC6(group_leader);
	pid_t session = FUNC1(sid);
	int err = -EPERM;

	FUNC7(&tasklist_lock);
	/* Fail if I am already a session leader */
	if (group_leader->signal->leader)
		goto out;

	/* Fail if a process group id already exists that equals the
	 * proposed session id.
	 */
	if (FUNC0(sid, PIDTYPE_PGID))
		goto out;

	group_leader->signal->leader = 1;
	FUNC5(sid);

	FUNC2(group_leader);

	err = session;
out:
	FUNC8(&tasklist_lock);
	if (err > 0) {
		FUNC3(group_leader);
		FUNC4(group_leader);
	}
	return err;
}