#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct kernfs_root {int dummy; } ;
struct fs_context {TYPE_1__* root; } ;
struct TYPE_7__ {int /*<<< orphan*/  children; } ;
struct TYPE_9__ {TYPE_2__ self; } ;
struct cgroup_root {int subsys_mask; int flags; int /*<<< orphan*/  release_agent_path; TYPE_5__ cgrp; int /*<<< orphan*/  name; } ;
struct cgroup_fs_context {int subsys_mask; int flags; scalar_t__ release_agent; scalar_t__ name; } ;
struct TYPE_8__ {int /*<<< orphan*/  comm; } ;
struct TYPE_6__ {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fs_context*,char*,int,char*,int,int /*<<< orphan*/ ) ; 
 struct cgroup_fs_context* FUNC2 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 struct cgroup_root* FUNC4 (struct kernfs_root*) ; 
 struct cgroup_root cgrp_dfl_root ; 
 int FUNC5 (struct fs_context*) ; 
 TYPE_3__* current ; 
 struct kernfs_root* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct cgroup_root*,int) ; 
 int /*<<< orphan*/  release_agent_path_lock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (struct cgroup_root*) ; 

int FUNC17(struct fs_context *fc)
{
	struct cgroup_fs_context *ctx = FUNC2(fc);
	struct kernfs_root *kf_root = FUNC6(fc->root->d_sb);
	struct cgroup_root *root = FUNC4(kf_root);
	int ret = 0;
	u16 added_mask, removed_mask;

	FUNC3(&cgrp_dfl_root.cgrp);

	/* See what subsystems are wanted */
	ret = FUNC5(fc);
	if (ret)
		goto out_unlock;

	if (ctx->subsys_mask != root->subsys_mask || ctx->release_agent)
		FUNC9("option changes via remount are deprecated (pid=%d comm=%s)\n",
			FUNC15(current), current->comm);

	added_mask = ctx->subsys_mask & ~root->subsys_mask;
	removed_mask = root->subsys_mask & ~ctx->subsys_mask;

	/* Don't allow flags or name to change at remount */
	if ((ctx->flags ^ root->flags) ||
	    (ctx->name && FUNC13(ctx->name, root->name))) {
		FUNC1(fc, "option or name mismatch, new: 0x%x \"%s\", old: 0x%x \"%s\"",
		       ctx->flags, ctx->name ?: "", root->flags, root->name);
		ret = -EINVAL;
		goto out_unlock;
	}

	/* remounting is not allowed for populated hierarchies */
	if (!FUNC7(&root->cgrp.self.children)) {
		ret = -EBUSY;
		goto out_unlock;
	}

	ret = FUNC10(root, added_mask);
	if (ret)
		goto out_unlock;

	FUNC0(FUNC10(&cgrp_dfl_root, removed_mask));

	if (ctx->release_agent) {
		FUNC11(&release_agent_path_lock);
		FUNC14(root->release_agent_path, ctx->release_agent);
		FUNC12(&release_agent_path_lock);
	}

	FUNC16(root);

 out_unlock:
	FUNC8(&cgroup_mutex);
	return ret;
}