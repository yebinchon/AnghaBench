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
struct cgroup {int /*<<< orphan*/  flags; struct cgroup_root* root; } ;
struct cgroup_root {struct cgroup cgrp; int /*<<< orphan*/  name; int /*<<< orphan*/  release_agent_path; int /*<<< orphan*/  flags; int /*<<< orphan*/  cgroup_idr; int /*<<< orphan*/  nr_cgrps; int /*<<< orphan*/  root_list; } ;
struct cgroup_fs_context {scalar_t__ cpuset_clone_children; int /*<<< orphan*/  name; int /*<<< orphan*/  release_agent; int /*<<< orphan*/  flags; struct cgroup_root* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGRP_CPUSET_CLONE_CHILDREN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_CGROUP_ROOT_NAMELEN ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct cgroup_fs_context *ctx)
{
	struct cgroup_root *root = ctx->root;
	struct cgroup *cgrp = &root->cgrp;

	FUNC0(&root->root_list);
	FUNC1(&root->nr_cgrps, 1);
	cgrp->root = root;
	FUNC3(cgrp);
	FUNC2(&root->cgroup_idr);

	root->flags = ctx->flags;
	if (ctx->release_agent)
		FUNC5(root->release_agent_path, ctx->release_agent, PATH_MAX);
	if (ctx->name)
		FUNC5(root->name, ctx->name, MAX_CGROUP_ROOT_NAMELEN);
	if (ctx->cpuset_clone_children)
		FUNC4(CGRP_CPUSET_CLONE_CHILDREN, &root->cgrp.flags);
}