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
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_blocksize_bits; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_mem_dqinfo {int /*<<< orphan*/  dqi_gi; struct inode* dqi_gqinode; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dqb_curinodes; int /*<<< orphan*/  dqb_curspace; } ;
struct TYPE_8__ {int type; } ;
struct dquot {int /*<<< orphan*/  dq_lock; int /*<<< orphan*/  dq_flags; int /*<<< orphan*/  dq_off; TYPE_1__ dq_dqb; TYPE_4__ dq_id; struct super_block* dq_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_9__ {int /*<<< orphan*/  dq_originodes; int /*<<< orphan*/  dq_origspace; int /*<<< orphan*/  dq_use_count; } ;
struct TYPE_7__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DQ_ACTIVE_B ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (struct dquot*) ; 
 struct ocfs2_super* FUNC2 (struct super_block*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct dquot*) ; 
 int FUNC16 (struct inode*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int FUNC17 (struct super_block*,int) ; 
 int FUNC18 (struct ocfs2_mem_dqinfo*,int) ; 
 int FUNC19 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/ * FUNC21 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ocfs2_mem_dqinfo*,int) ; 
 int FUNC23 (int /*<<< orphan*/ *,struct dquot*) ; 
 int FUNC24 (int /*<<< orphan*/ *,struct dquot*) ; 
 TYPE_2__* FUNC25 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC28(struct dquot *dquot)
{
	int status = 0, err;
	int ex = 0;
	struct super_block *sb = dquot->dq_sb;
	struct ocfs2_super *osb = FUNC2(sb);
	int type = dquot->dq_id.type;
	struct ocfs2_mem_dqinfo *info = FUNC25(sb, type)->dqi_priv;
	struct inode *gqinode = info->dqi_gqinode;
	int need_alloc = FUNC17(sb, type);
	handle_t *handle;

	FUNC27(FUNC6(&init_user_ns, dquot->dq_id),
				  type);
	FUNC11(&dquot->dq_lock);
	/*
	 * We need an exclusive lock, because we're going to update use count
	 * and instantiate possibly new dquot structure
	 */
	status = FUNC18(info, 1);
	if (status < 0)
		goto out;
	status = FUNC19(info, 0);
	if (status < 0)
		goto out_dq;
	/*
	 * We always want to read dquot structure from disk because we don't
	 * know what happened with it while it was on freelist.
	 */
	status = FUNC23(&info->dqi_gi, dquot);
	FUNC20(info, 0);
	if (status < 0)
		goto out_dq;

	FUNC1(dquot)->dq_use_count++;
	FUNC1(dquot)->dq_origspace = dquot->dq_dqb.dqb_curspace;
	FUNC1(dquot)->dq_originodes = dquot->dq_dqb.dqb_curinodes;
	if (!dquot->dq_off) {	/* No real quota entry? */
		ex = 1;
		/*
		 * Add blocks to quota file before we start a transaction since
		 * locking allocators ranks above a transaction start
		 */
		FUNC4(FUNC9());
		status = FUNC16(gqinode, NULL,
			FUNC7(gqinode) + (need_alloc << sb->s_blocksize_bits),
			FUNC7(gqinode));
		if (status < 0)
			goto out_dq;
	}

	handle = FUNC21(osb,
				   FUNC13(sb, type));
	if (FUNC0(handle)) {
		status = FUNC3(handle);
		goto out_dq;
	}
	status = FUNC19(info, ex);
	if (status < 0)
		goto out_trans;
	status = FUNC24(&info->dqi_gi, dquot);
	if (ex && FUNC8(FUNC25(sb, type))) {
		err = FUNC5(sb, type);
		if (!status)
			status = err;
	}
	FUNC20(info, ex);
out_trans:
	FUNC14(osb, handle);
out_dq:
	FUNC22(info, 1);
	if (status < 0)
		goto out;

	status = FUNC15(dquot);
	if (status < 0)
		goto out;
	FUNC26(DQ_ACTIVE_B, &dquot->dq_flags);
out:
	FUNC12(&dquot->dq_lock);
	if (status)
		FUNC10(status);
	return status;
}