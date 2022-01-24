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
struct ocfs2_super {scalar_t__ dc_task; int /*<<< orphan*/  dquot_drop_work; int /*<<< orphan*/  ocfs2_wq; int /*<<< orphan*/  dquot_drop_list; } ;
struct ocfs2_mem_dqinfo {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct dquot {int /*<<< orphan*/  dq_lock; int /*<<< orphan*/  dq_flags; scalar_t__ dq_off; TYPE_2__ dq_id; int /*<<< orphan*/  dq_sb; int /*<<< orphan*/  dq_count; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int /*<<< orphan*/  list; } ;
struct TYPE_4__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DQ_ACTIVE_B ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (struct dquot*) ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC6 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/  init_user_ns ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct dquot*) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct dquot*) ; 
 int FUNC16 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/ * FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct dquot *dquot)
{
	handle_t *handle;
	struct ocfs2_mem_dqinfo *oinfo =
			FUNC20(dquot->dq_sb, dquot->dq_id.type)->dqi_priv;
	struct ocfs2_super *osb = FUNC2(dquot->dq_sb);
	int status = 0;

	FUNC21(FUNC7(&init_user_ns, dquot->dq_id),
				  dquot->dq_id.type);

	FUNC10(&dquot->dq_lock);
	/* Check whether we are not racing with some other dqget() */
	if (FUNC4(&dquot->dq_count) > 1)
		goto out;
	/* Running from downconvert thread? Postpone quota processing to wq */
	if (current == osb->dc_task) {
		/*
		 * Grab our own reference to dquot and queue it for delayed
		 * dropping.  Quota code rechecks after calling
		 * ->release_dquot() and won't free dquot structure.
		 */
		FUNC6(dquot);
		/* First entry on list -> queue work */
		if (FUNC8(&FUNC1(dquot)->list, &osb->dquot_drop_list))
			FUNC19(osb->ocfs2_wq, &osb->dquot_drop_work);
		goto out;
	}
	status = FUNC16(oinfo, 1);
	if (status < 0)
		goto out;
	handle = FUNC17(osb,
		FUNC12(dquot->dq_sb, dquot->dq_id.type));
	if (FUNC0(handle)) {
		status = FUNC3(handle);
		FUNC9(status);
		goto out_ilock;
	}

	status = FUNC14(dquot);
	if (status < 0) {
		FUNC9(status);
		goto out_trans;
	}
	status = FUNC15(handle, dquot);
	/*
	 * If we fail here, we cannot do much as global structure is
	 * already released. So just complain...
	 */
	if (status < 0)
		FUNC9(status);
	/*
	 * Clear dq_off so that we search for the structure in quota file next
	 * time we acquire it. The structure might be deleted and reallocated
	 * elsewhere by another node while our dquot structure is on freelist.
	 */
	dquot->dq_off = 0;
	FUNC5(DQ_ACTIVE_B, &dquot->dq_flags);
out_trans:
	FUNC13(osb, handle);
out_ilock:
	FUNC18(oinfo, 1);
out:
	FUNC11(&dquot->dq_lock);
	if (status)
		FUNC9(status);
	return status;
}