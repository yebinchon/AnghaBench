#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cgroup_root {int /*<<< orphan*/  cgroup_idr; int /*<<< orphan*/  nr_cgrps; } ;
struct TYPE_4__ {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  children; int /*<<< orphan*/  sibling; scalar_t__ serial_nr; struct TYPE_4__* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  nr_frozen_descendants; scalar_t__ e_freeze; } ;
struct cgroup {int level; scalar_t__ id; scalar_t__* ancestor_ids; TYPE_2__ self; int /*<<< orphan*/  subtree_control; int /*<<< orphan*/  flags; TYPE_1__ freezer; int /*<<< orphan*/  nr_descendants; struct cgroup_root* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGRP_CPUSET_CLONE_CHILDREN ; 
 int /*<<< orphan*/  CGRP_FREEZE ; 
 int /*<<< orphan*/  CGRP_FROZEN ; 
 int /*<<< orphan*/  CGRP_NOTIFY_ON_RELEASE ; 
 int ENOMEM ; 
 struct cgroup* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ancestor_ids ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (struct cgroup*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct cgroup*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct cgroup*) ; 
 struct cgroup* FUNC9 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC10 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC11 (struct cgroup*) ; 
 int FUNC12 (struct cgroup*) ; 
 int /*<<< orphan*/  css_release ; 
 int /*<<< orphan*/  css_serial_nr_next ; 
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC13 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC14 (struct cgroup*) ; 
 struct cgroup* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC21 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct cgroup*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cgroup *FUNC27(struct cgroup *parent)
{
	struct cgroup_root *root = parent->root;
	struct cgroup *cgrp, *tcgrp;
	int level = parent->level + 1;
	int ret;

	/* allocate the cgroup and its ID, 0 is reserved for the root */
	cgrp = FUNC15(FUNC25(cgrp, ancestor_ids, (level + 1)),
		       GFP_KERNEL);
	if (!cgrp)
		return FUNC0(-ENOMEM);

	ret = FUNC19(&cgrp->self.refcnt, css_release, 0, GFP_KERNEL);
	if (ret)
		goto out_free_cgrp;

	if (FUNC8(parent)) {
		ret = FUNC12(cgrp);
		if (ret)
			goto out_cancel_ref;
	}

	/*
	 * Temporarily set the pointer to NULL, so idr_find() won't return
	 * a half-baked cgroup.
	 */
	cgrp->id = FUNC5(&root->cgroup_idr, NULL, 2, 0, GFP_KERNEL);
	if (cgrp->id < 0) {
		ret = -ENOMEM;
		goto out_stat_exit;
	}

	FUNC13(cgrp);

	cgrp->self.parent = &parent->self;
	cgrp->root = root;
	cgrp->level = level;

	ret = FUNC20(cgrp);
	if (ret)
		goto out_idr_free;

	ret = FUNC2(cgrp);
	if (ret)
		goto out_psi_free;

	/*
	 * New cgroup inherits effective freeze counter, and
	 * if the parent has to be frozen, the child has too.
	 */
	cgrp->freezer.e_freeze = parent->freezer.e_freeze;
	if (cgrp->freezer.e_freeze) {
		/*
		 * Set the CGRP_FREEZE flag, so when a process will be
		 * attached to the child cgroup, it will become frozen.
		 * At this point the new cgroup is unpopulated, so we can
		 * consider it frozen immediately.
		 */
		FUNC22(CGRP_FREEZE, &cgrp->flags);
		FUNC22(CGRP_FROZEN, &cgrp->flags);
	}

	FUNC23(&css_set_lock);
	for (tcgrp = cgrp; tcgrp; tcgrp = FUNC9(tcgrp)) {
		cgrp->ancestor_ids[tcgrp->level] = tcgrp->id;

		if (tcgrp != cgrp) {
			tcgrp->nr_descendants++;

			/*
			 * If the new cgroup is frozen, all ancestor cgroups
			 * get a new frozen descendant, but their state can't
			 * change because of this.
			 */
			if (cgrp->freezer.e_freeze)
				tcgrp->freezer.nr_frozen_descendants++;
		}
	}
	FUNC24(&css_set_lock);

	if (FUNC17(parent))
		FUNC22(CGRP_NOTIFY_ON_RELEASE, &cgrp->flags);

	if (FUNC26(CGRP_CPUSET_CLONE_CHILDREN, &parent->flags))
		FUNC22(CGRP_CPUSET_CLONE_CHILDREN, &cgrp->flags);

	cgrp->self.serial_nr = css_serial_nr_next++;

	/* allocation complete, commit to creation */
	FUNC16(&cgrp->self.sibling, &FUNC9(cgrp)->self.children);
	FUNC1(&root->nr_cgrps);
	FUNC4(parent);

	/*
	 * @cgrp is now fully operational.  If something fails after this
	 * point, it'll be released via the normal destruction path.
	 */
	FUNC7(&root->cgroup_idr, cgrp, cgrp->id);

	/*
	 * On the default hierarchy, a child doesn't automatically inherit
	 * subtree_control from the parent.  Each is configured manually.
	 */
	if (!FUNC8(cgrp))
		cgrp->subtree_control = FUNC3(cgrp);

	FUNC10(cgrp);

	return cgrp;

out_psi_free:
	FUNC21(cgrp);
out_idr_free:
	FUNC6(&root->cgroup_idr, cgrp->id);
out_stat_exit:
	if (FUNC8(parent))
		FUNC11(cgrp);
out_cancel_ref:
	FUNC18(&cgrp->self.refcnt);
out_free_cgrp:
	FUNC14(cgrp);
	return FUNC0(ret);
}