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
struct super_block {TYPE_1__* dq_op; int /*<<< orphan*/  s_user_ns; } ;
struct kqid {int /*<<< orphan*/  type; } ;
struct dquot {int /*<<< orphan*/  dq_sb; int /*<<< orphan*/  dq_flags; int /*<<< orphan*/  dq_count; struct kqid dq_id; } ;
struct TYPE_2__ {int (* acquire_dquot ) (struct dquot*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DQST_CACHE_HITS ; 
 int /*<<< orphan*/  DQST_LOOKUPS ; 
 int /*<<< orphan*/  DQ_ACTIVE_B ; 
 int EINVAL ; 
 struct dquot* FUNC1 (int) ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dquot*) ; 
 int /*<<< orphan*/  dq_list_lock ; 
 int /*<<< orphan*/  dq_state_lock ; 
 int /*<<< orphan*/  FUNC5 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct dquot* FUNC7 (unsigned int,struct super_block*,struct kqid) ; 
 struct dquot* FUNC8 (struct super_block*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct super_block*,struct kqid) ; 
 int /*<<< orphan*/  FUNC10 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC11 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct kqid) ; 
 int /*<<< orphan*/  FUNC13 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct dquot*) ; 

struct dquot *FUNC22(struct super_block *sb, struct kqid qid)
{
	unsigned int hashent = FUNC9(sb, qid);
	struct dquot *dquot, *empty = NULL;

	if (!FUNC12(sb->s_user_ns, qid))
		return FUNC1(-EINVAL);

        if (!FUNC14(sb, qid.type))
		return FUNC1(-ESRCH);
we_slept:
	FUNC17(&dq_list_lock);
	FUNC17(&dq_state_lock);
	if (!FUNC14(sb, qid.type)) {
		FUNC18(&dq_state_lock);
		FUNC18(&dq_list_lock);
		dquot = FUNC1(-ESRCH);
		goto out;
	}
	FUNC18(&dq_state_lock);

	dquot = FUNC7(hashent, sb, qid);
	if (!dquot) {
		if (!empty) {
			FUNC18(&dq_list_lock);
			empty = FUNC8(sb, qid.type);
			if (!empty)
				FUNC15();	/* Try to wait for a moment... */
			goto we_slept;
		}
		dquot = empty;
		empty = NULL;
		dquot->dq_id = qid;
		/* all dquots go on the inuse_list */
		FUNC11(dquot);
		/* hash it first so it can be found */
		FUNC10(dquot);
		FUNC18(&dq_list_lock);
		FUNC6(DQST_LOOKUPS);
	} else {
		if (!FUNC3(&dquot->dq_count))
			FUNC13(dquot);
		FUNC2(&dquot->dq_count);
		FUNC18(&dq_list_lock);
		FUNC6(DQST_CACHE_HITS);
		FUNC6(DQST_LOOKUPS);
	}
	/* Wait for dq_lock - after this we know that either dquot_release() is
	 * already finished or it will be canceled due to dq_count > 1 test */
	FUNC21(dquot);
	/* Read the dquot / allocate space in quota file */
	if (!FUNC20(DQ_ACTIVE_B, &dquot->dq_flags)) {
		int err;

		err = sb->dq_op->acquire_dquot(dquot);
		if (err < 0) {
			FUNC5(dquot);
			dquot = FUNC1(err);
			goto out;
		}
	}
	/*
	 * Make sure following reads see filled structure - paired with
	 * smp_mb__before_atomic() in dquot_acquire().
	 */
	FUNC16();
#ifdef CONFIG_QUOTA_DEBUG
	BUG_ON(!dquot->dq_sb);	/* Has somebody invalidated entry under us? */
#endif
out:
	if (empty)
		FUNC4(empty);

	return dquot;
}