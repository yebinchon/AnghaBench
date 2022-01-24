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
struct upid {int /*<<< orphan*/  nr; struct pid_namespace* ns; } ;
struct pid_namespace {int pid_allocated; int /*<<< orphan*/  idr; int /*<<< orphan*/  proc_work; int /*<<< orphan*/  child_reaper; } ;
struct pid {int level; int /*<<< orphan*/  rcu; struct upid* numbers; } ;

/* Variables and functions */
#define  PIDNS_ADDING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delayed_put_pid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pidmap_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct pid *pid)
{
	/* We can be called with write_lock_irq(&tasklist_lock) held */
	int i;
	unsigned long flags;

	FUNC4(&pidmap_lock, flags);
	for (i = 0; i <= pid->level; i++) {
		struct upid *upid = pid->numbers + i;
		struct pid_namespace *ns = upid->ns;
		switch (--ns->pid_allocated) {
		case 2:
		case 1:
			/* When all that is left in the pid namespace
			 * is the reaper wake up the reaper.  The reaper
			 * may be sleeping in zap_pid_ns_processes().
			 */
			FUNC6(ns->child_reaper);
			break;
		case PIDNS_ADDING:
			/* Handle a fork failure of the first process */
			FUNC0(ns->child_reaper);
			ns->pid_allocated = 0;
			/* fall through */
		case 0:
			FUNC3(&ns->proc_work);
			break;
		}

		FUNC2(&ns->idr, upid->nr);
	}
	FUNC5(&pidmap_lock, flags);

	FUNC1(&pid->rcu, delayed_put_pid);
}