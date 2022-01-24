#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct fs_context {TYPE_5__* root; } ;
struct cgroup_fs_context {TYPE_4__* root; TYPE_1__* ns; } ;
struct TYPE_12__ {int /*<<< orphan*/  cgrp; } ;
struct TYPE_11__ {struct super_block* d_sb; } ;
struct TYPE_8__ {int /*<<< orphan*/  refcnt; } ;
struct TYPE_9__ {TYPE_2__ self; } ;
struct TYPE_10__ {TYPE_3__ cgrp; } ;
struct TYPE_7__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 int FUNC0 (struct fs_context*) ; 
 int FUNC1 (struct fs_context*) ; 
 struct cgroup_fs_context* FUNC2 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 TYPE_6__ cgrp_dfl_root ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 () ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct fs_context *fc)
{
	struct cgroup_fs_context *ctx = FUNC2(fc);
	int ret;

	/* Check if the caller has permission to mount. */
	if (!FUNC8(ctx->ns->user_ns, CAP_SYS_ADMIN))
		return -EPERM;

	FUNC3(&cgrp_dfl_root.cgrp);

	ret = FUNC0(fc);
	if (!ret && !FUNC10(&ctx->root->cgrp.self.refcnt))
		ret = 1;	/* restart */

	FUNC7(&cgroup_mutex);

	if (!ret)
		ret = FUNC1(fc);

	if (!ret && FUNC9(&ctx->root->cgrp.self.refcnt)) {
		struct super_block *sb = fc->root->d_sb;
		FUNC5(fc->root);
		FUNC4(sb);
		ret = 1;
	}

	if (FUNC12(ret > 0)) {
		FUNC6(10);
		return FUNC11();
	}
	return ret;
}