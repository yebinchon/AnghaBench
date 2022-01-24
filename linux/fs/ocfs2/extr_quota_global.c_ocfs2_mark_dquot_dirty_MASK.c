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
struct ocfs2_super {int dummy; } ;
struct ocfs2_mem_dqinfo {int dummy; } ;
struct TYPE_6__ {int type; } ;
struct dquot {unsigned long dq_flags; int /*<<< orphan*/  dq_dqb_lock; TYPE_3__ dq_id; struct super_block* dq_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_5__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  dqio_sem; } ;

/* Variables and functions */
 int DQ_LASTSET_B ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_QSYNC_CREDITS ; 
 struct ocfs2_super* FUNC1 (struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int QIF_BLIMITS_B ; 
 int QIF_BTIME_B ; 
 int QIF_ILIMITS_B ; 
 int QIF_INODES_B ; 
 int QIF_ITIME_B ; 
 int QIF_SPACE_B ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__) ; 
 int /*<<< orphan*/  init_user_ns ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct dquot*) ; 
 int FUNC9 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/ * FUNC10 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_mem_dqinfo*,int) ; 
 int FUNC13 (struct dquot*) ; 
 TYPE_2__* FUNC14 (struct super_block*,int) ; 
 TYPE_1__* FUNC15 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct dquot *dquot)
{
	unsigned long mask = (1 << (DQ_LASTSET_B + QIF_ILIMITS_B)) |
			     (1 << (DQ_LASTSET_B + QIF_BLIMITS_B)) |
			     (1 << (DQ_LASTSET_B + QIF_INODES_B)) |
			     (1 << (DQ_LASTSET_B + QIF_SPACE_B)) |
			     (1 << (DQ_LASTSET_B + QIF_BTIME_B)) |
			     (1 << (DQ_LASTSET_B + QIF_ITIME_B));
	int sync = 0;
	int status;
	struct super_block *sb = dquot->dq_sb;
	int type = dquot->dq_id.type;
	struct ocfs2_mem_dqinfo *oinfo = FUNC14(sb, type)->dqi_priv;
	handle_t *handle;
	struct ocfs2_super *osb = FUNC1(sb);

	FUNC18(FUNC4(&init_user_ns, dquot->dq_id),
				     type);

	/* In case user set some limits, sync dquot immediately to global
	 * quota file so that information propagates quicker */
	FUNC16(&dquot->dq_dqb_lock);
	if (dquot->dq_flags & mask)
		sync = 1;
	FUNC17(&dquot->dq_dqb_lock);
	/* This is a slight hack but we can't afford getting global quota
	 * lock if we already have a transaction started. */
	if (!sync || FUNC5()) {
		status = FUNC13(dquot);
		goto out;
	}
	status = FUNC9(oinfo, 1);
	if (status < 0)
		goto out;
	handle = FUNC10(osb, OCFS2_QSYNC_CREDITS);
	if (FUNC0(handle)) {
		status = FUNC2(handle);
		FUNC6(status);
		goto out_ilock;
	}
	FUNC3(&FUNC15(sb)->dqio_sem);
	status = FUNC11(dquot);
	if (status < 0) {
		FUNC6(status);
		goto out_dlock;
	}
	/* Now write updated local dquot structure */
	status = FUNC8(dquot);
out_dlock:
	FUNC19(&FUNC15(sb)->dqio_sem);
	FUNC7(osb, handle);
out_ilock:
	FUNC12(oinfo, 1);
out:
	if (status)
		FUNC6(status);
	return status;
}