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
struct fs_context {int dummy; } ;
struct cgroup_fs_context {int /*<<< orphan*/  flags; TYPE_1__* root; } ;
struct TYPE_2__ {int /*<<< orphan*/  cgrp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fs_context*) ; 
 struct cgroup_fs_context* FUNC2 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ cgrp_dfl_root ; 
 int cgrp_dfl_visible ; 

__attribute__((used)) static int FUNC4(struct fs_context *fc)
{
	struct cgroup_fs_context *ctx = FUNC2(fc);
	int ret;

	cgrp_dfl_visible = true;
	FUNC3(&cgrp_dfl_root.cgrp);
	ctx->root = &cgrp_dfl_root;

	ret = FUNC1(fc);
	if (!ret)
		FUNC0(ctx->flags);
	return ret;
}