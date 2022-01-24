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
struct TYPE_2__ {int type; int /*<<< orphan*/  ns; } ;
struct cgroup_pidlist {int /*<<< orphan*/  links; struct cgroup* owner; TYPE_1__ key; int /*<<< orphan*/  destroy_dwork; } ;
struct cgroup {int /*<<< orphan*/  pidlists; int /*<<< orphan*/  pidlist_mutex; } ;
typedef  enum cgroup_filetype { ____Placeholder_cgroup_filetype } cgroup_filetype ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cgroup_pidlist_destroy_work_fn ; 
 struct cgroup_pidlist* FUNC1 (struct cgroup*,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cgroup_pidlist* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cgroup_pidlist *FUNC7(struct cgroup *cgrp,
						enum cgroup_filetype type)
{
	struct cgroup_pidlist *l;

	FUNC5(&cgrp->pidlist_mutex);

	l = FUNC1(cgrp, type);
	if (l)
		return l;

	/* entry not found; create a new one */
	l = FUNC3(sizeof(struct cgroup_pidlist), GFP_KERNEL);
	if (!l)
		return l;

	FUNC0(&l->destroy_dwork, cgroup_pidlist_destroy_work_fn);
	l->key.type = type;
	/* don't need task_nsproxy() if we're looking at ourself */
	l->key.ns = FUNC2(FUNC6(current));
	l->owner = cgrp;
	FUNC4(&l->links, &cgrp->pidlists);
	return l;
}