#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct fs_context {struct dentry* root; int /*<<< orphan*/ * fs_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  new_sb_created; int /*<<< orphan*/  magic; int /*<<< orphan*/  root; } ;
struct cgroup_fs_context {TYPE_3__* root; TYPE_1__ kfc; TYPE_2__* ns; } ;
struct cgroup {int /*<<< orphan*/  kn; } ;
struct TYPE_6__ {int /*<<< orphan*/  cgrp; int /*<<< orphan*/  kf_root; } ;
struct TYPE_5__ {int /*<<< orphan*/  root_cset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGROUP2_SUPER_MAGIC ; 
 int /*<<< orphan*/  CGROUP_SUPER_MAGIC ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  cgroup2_fs_type ; 
 struct cgroup_fs_context* FUNC2 (struct fs_context*) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cgroup* FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 TYPE_2__ init_cgroup_ns ; 
 int FUNC7 (struct fs_context*) ; 
 struct dentry* FUNC8 (int /*<<< orphan*/ ,struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct fs_context *fc)
{
	struct cgroup_fs_context *ctx = FUNC2(fc);
	int ret;

	ctx->kfc.root = ctx->root->kf_root;
	if (fc->fs_type == &cgroup2_fs_type)
		ctx->kfc.magic = CGROUP2_SUPER_MAGIC;
	else
		ctx->kfc.magic = CGROUP_SUPER_MAGIC;
	ret = FUNC7(fc);

	/*
	 * In non-init cgroup namespace, instead of root cgroup's dentry,
	 * we return the dentry corresponding to the cgroupns->root_cgrp.
	 */
	if (!ret && ctx->ns != &init_cgroup_ns) {
		struct dentry *nsdentry;
		struct super_block *sb = fc->root->d_sb;
		struct cgroup *cgrp;

		FUNC9(&cgroup_mutex);
		FUNC11(&css_set_lock);

		cgrp = FUNC4(ctx->ns->root_cset, ctx->root);

		FUNC12(&css_set_lock);
		FUNC10(&cgroup_mutex);

		nsdentry = FUNC8(cgrp->kn, sb);
		FUNC6(fc->root);
		fc->root = nsdentry;
		if (FUNC0(nsdentry)) {
			ret = FUNC1(nsdentry);
			FUNC5(sb);
		}
	}

	if (!ctx->kfc.new_sb_created)
		FUNC3(&ctx->root->cgrp);

	return ret;
}