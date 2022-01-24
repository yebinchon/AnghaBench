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
struct css_task_iter {int dummy; } ;
struct cgroup_pidlist {int* list; int length; } ;
struct cgroup {int /*<<< orphan*/  self; int /*<<< orphan*/  pidlist_mutex; } ;
typedef  int pid_t ;
typedef  enum cgroup_filetype { ____Placeholder_cgroup_filetype } cgroup_filetype ;

/* Variables and functions */
 int CGROUP_FILE_PROCS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct cgroup_pidlist* FUNC0 (struct cgroup*,int) ; 
 int FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  cmppid ; 
 int /*<<< orphan*/  FUNC2 (struct css_task_iter*) ; 
 struct task_struct* FUNC3 (struct css_task_iter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct css_task_iter*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct task_struct*) ; 
 int FUNC11 (struct task_struct*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct cgroup *cgrp, enum cgroup_filetype type,
			      struct cgroup_pidlist **lp)
{
	pid_t *array;
	int length;
	int pid, n = 0; /* used for populating the array */
	struct css_task_iter it;
	struct task_struct *tsk;
	struct cgroup_pidlist *l;

	FUNC7(&cgrp->pidlist_mutex);

	/*
	 * If cgroup gets more users after we read count, we won't have
	 * enough space - tough.  This race is indistinguishable to the
	 * caller from the case that the additional cgroup users didn't
	 * show up until sometime later on.
	 */
	length = FUNC1(cgrp);
	array = FUNC6(length, sizeof(pid_t), GFP_KERNEL);
	if (!array)
		return -ENOMEM;
	/* now, populate the array */
	FUNC4(&cgrp->self, 0, &it);
	while ((tsk = FUNC3(&it))) {
		if (FUNC12(n == length))
			break;
		/* get tgid or pid for procs or tasks file respectively */
		if (type == CGROUP_FILE_PROCS)
			pid = FUNC11(tsk);
		else
			pid = FUNC10(tsk);
		if (pid > 0) /* make sure to only use valid results */
			array[n++] = pid;
	}
	FUNC2(&it);
	length = n;
	/* now sort & (if procs) strip out duplicates */
	FUNC9(array, length, sizeof(pid_t), cmppid, NULL);
	if (type == CGROUP_FILE_PROCS)
		length = FUNC8(array, length);

	l = FUNC0(cgrp, type);
	if (!l) {
		FUNC5(array);
		return -ENOMEM;
	}

	/* store array, freeing old if necessary */
	FUNC5(l->list);
	l->list = array;
	l->length = length;
	*lp = l;
	return 0;
}