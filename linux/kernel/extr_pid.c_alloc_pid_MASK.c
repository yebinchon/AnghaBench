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
struct upid {int nr; struct pid_namespace* ns; } ;
struct pid_namespace {int level; int pid_allocated; int /*<<< orphan*/  pid_cachep; int /*<<< orphan*/  idr; struct pid_namespace* parent; } ;
struct pid {int level; struct upid* numbers; int /*<<< orphan*/  wait_pidfd; int /*<<< orphan*/ * tasks; int /*<<< orphan*/  count; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct pid* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int PIDNS_ADDING ; 
 int PIDTYPE_MAX ; 
 int RESERVED_PIDS ; 
 int /*<<< orphan*/  FUNC2 (struct pid_namespace*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct pid*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct pid*) ; 
 struct pid* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct pid*) ; 
 int /*<<< orphan*/  pid_max ; 
 scalar_t__ FUNC14 (struct pid_namespace*) ; 
 int /*<<< orphan*/  pidmap_lock ; 
 int /*<<< orphan*/  FUNC15 (struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

struct pid *FUNC20(struct pid_namespace *ns)
{
	struct pid *pid;
	enum pid_type type;
	int i, nr;
	struct pid_namespace *tmp;
	struct upid *upid;
	int retval = -ENOMEM;

	pid = FUNC12(ns->pid_cachep, GFP_KERNEL);
	if (!pid)
		return FUNC0(retval);

	tmp = ns;
	pid->level = ns->level;

	for (i = ns->level; i >= 0; i--) {
		int pid_min = 1;

		FUNC5(GFP_KERNEL);
		FUNC17(&pidmap_lock);

		/*
		 * init really needs pid 1, but after reaching the maximum
		 * wrap back to RESERVED_PIDS
		 */
		if (FUNC4(&tmp->idr) > RESERVED_PIDS)
			pid_min = RESERVED_PIDS;

		/*
		 * Store a null pointer so find_pid_ns does not find
		 * a partially initialized PID (see below).
		 */
		nr = FUNC3(&tmp->idr, NULL, pid_min,
				      pid_max, GFP_ATOMIC);
		FUNC18(&pidmap_lock);
		FUNC6();

		if (nr < 0) {
			retval = (nr == -ENOSPC) ? -EAGAIN : nr;
			goto out_free;
		}

		pid->numbers[i].nr = nr;
		pid->numbers[i].ns = tmp;
		tmp = tmp->parent;
	}

	if (FUNC19(FUNC11(pid))) {
		if (FUNC14(ns))
			goto out_free;
	}

	FUNC2(ns);
	FUNC16(&pid->count, 1);
	for (type = 0; type < PIDTYPE_MAX; ++type)
		FUNC1(&pid->tasks[type]);

	FUNC10(&pid->wait_pidfd);

	upid = pid->numbers + ns->level;
	FUNC17(&pidmap_lock);
	if (!(ns->pid_allocated & PIDNS_ADDING))
		goto out_unlock;
	for ( ; upid >= pid->numbers; --upid) {
		/* Make the PID visible to find_pid_ns. */
		FUNC8(&upid->ns->idr, pid, upid->nr);
		upid->ns->pid_allocated++;
	}
	FUNC18(&pidmap_lock);

	return pid;

out_unlock:
	FUNC18(&pidmap_lock);
	FUNC15(ns);

out_free:
	FUNC17(&pidmap_lock);
	while (++i <= ns->level) {
		upid = pid->numbers + i;
		FUNC7(&upid->ns->idr, upid->nr);
	}

	/* On failure to allocate the first pid, reset the state */
	if (ns->pid_allocated == PIDNS_ADDING)
		FUNC9(&ns->idr, 0);

	FUNC18(&pidmap_lock);

	FUNC13(ns->pid_cachep, pid);
	return FUNC0(retval);
}