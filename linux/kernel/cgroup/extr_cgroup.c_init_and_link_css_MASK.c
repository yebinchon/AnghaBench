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
struct cgroup_subsys_state {int id; int /*<<< orphan*/  rstat_css_node; int /*<<< orphan*/  parent; int /*<<< orphan*/  online_cnt; scalar_t__ serial_nr; int /*<<< orphan*/  children; int /*<<< orphan*/  sibling; struct cgroup_subsys* ss; struct cgroup* cgroup; } ;
struct cgroup_subsys {scalar_t__ css_rstat_flush; } ;
struct cgroup {int /*<<< orphan*/  rstat_css_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*,struct cgroup_subsys*) ; 
 int /*<<< orphan*/  FUNC4 (struct cgroup*) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 scalar_t__ FUNC5 (struct cgroup*) ; 
 struct cgroup* FUNC6 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  css_serial_nr_next ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct cgroup_subsys_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct cgroup_subsys_state *css,
			      struct cgroup_subsys *ss, struct cgroup *cgrp)
{
	FUNC9(&cgroup_mutex);

	FUNC4(cgrp);

	FUNC10(css, 0, sizeof(*css));
	css->cgroup = cgrp;
	css->ss = ss;
	css->id = -1;
	FUNC1(&css->sibling);
	FUNC1(&css->children);
	FUNC1(&css->rstat_css_node);
	css->serial_nr = css_serial_nr_next++;
	FUNC2(&css->online_cnt, 0);

	if (FUNC6(cgrp)) {
		css->parent = FUNC3(FUNC6(cgrp), ss);
		FUNC7(css->parent);
	}

	if (FUNC5(cgrp) && ss->css_rstat_flush)
		FUNC8(&css->rstat_css_node, &cgrp->rstat_css_list);

	FUNC0(FUNC3(cgrp, ss));
}