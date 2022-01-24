#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t type; } ;
struct dquot {int /*<<< orphan*/  dq_free; int /*<<< orphan*/  dq_count; TYPE_2__* dq_sb; int /*<<< orphan*/  dq_flags; TYPE_4__ dq_id; } ;
struct TYPE_6__ {TYPE_1__* dq_op; } ;
struct TYPE_5__ {int (* write_dquot ) (struct dquot*) ;int /*<<< orphan*/  (* release_dquot ) (struct dquot*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DQST_DROPS ; 
 int /*<<< orphan*/  DQ_ACTIVE_B ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dquot*) ; 
 int /*<<< orphan*/  dq_list_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct dquot*) ; 
 int /*<<< orphan*/  dquot_ref_wq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int,...) ; 
 int /*<<< orphan*/ * quotatypes ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC15 (struct dquot*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

void FUNC18(struct dquot *dquot)
{
	int ret;

	if (!dquot)
		return;
#ifdef CONFIG_QUOTA_DEBUG
	if (!atomic_read(&dquot->dq_count)) {
		quota_error(dquot->dq_sb, "trying to free free dquot of %s %d",
			    quotatypes[dquot->dq_id.type],
			    from_kqid(&init_user_ns, dquot->dq_id));
		BUG();
	}
#endif
	FUNC5(DQST_DROPS);
we_slept:
	FUNC12(&dq_list_lock);
	if (FUNC3(&dquot->dq_count) > 1) {
		/* We have more than one user... nothing to do */
		FUNC2(&dquot->dq_count);
		/* Releasing dquot during quotaoff phase? */
		if (!FUNC11(dquot->dq_sb, dquot->dq_id.type) &&
		    FUNC3(&dquot->dq_count) == 1)
			FUNC17(&dquot_ref_wq);
		FUNC13(&dq_list_lock);
		return;
	}
	/* Need to release dquot? */
	if (FUNC6(dquot)) {
		FUNC13(&dq_list_lock);
		/* Commit dquot before releasing */
		ret = dquot->dq_sb->dq_op->write_dquot(dquot);
		if (ret < 0) {
			FUNC10(dquot->dq_sb, "Can't write quota structure"
				    " (error %d). Quota may get out of sync!",
				    ret);
			/*
			 * We clear dirty bit anyway, so that we avoid
			 * infinite loop here
			 */
			FUNC4(dquot);
		}
		goto we_slept;
	}
	if (FUNC16(DQ_ACTIVE_B, &dquot->dq_flags)) {
		FUNC13(&dq_list_lock);
		dquot->dq_sb->dq_op->release_dquot(dquot);
		goto we_slept;
	}
	FUNC2(&dquot->dq_count);
#ifdef CONFIG_QUOTA_DEBUG
	/* sanity check */
	BUG_ON(!list_empty(&dquot->dq_free));
#endif
	FUNC9(dquot);
	FUNC13(&dq_list_lock);
}