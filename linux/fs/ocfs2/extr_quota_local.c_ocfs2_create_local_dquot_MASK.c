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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct ocfs2_quota_chunk {int /*<<< orphan*/  qc_headerbh; int /*<<< orphan*/  qc_num; } ;
struct ocfs2_dquot {int /*<<< orphan*/  dq_local_phys_blk; struct ocfs2_quota_chunk* dq_chunk; int /*<<< orphan*/  dq_local_off; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct dquot {TYPE_1__ dq_id; struct super_block* dq_sb; } ;
struct TYPE_6__ {int /*<<< orphan*/  ip_alloc_sem; } ;
struct TYPE_5__ {struct inode** files; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ocfs2_quota_chunk*) ; 
 struct ocfs2_dquot* FUNC1 (struct dquot*) ; 
 TYPE_3__* FUNC2 (struct inode*) ; 
 int FUNC3 (struct ocfs2_quota_chunk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct ocfs2_quota_chunk* FUNC6 (struct super_block*,int,int*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ocfs2_quota_chunk* FUNC8 (struct super_block*,int,int*) ; 
 int FUNC9 (struct dquot*) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  olq_alloc_dquot ; 
 TYPE_2__* FUNC13 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct dquot *dquot)
{
	struct super_block *sb = dquot->dq_sb;
	int type = dquot->dq_id.type;
	struct inode *lqinode = FUNC13(sb)->files[type];
	struct ocfs2_quota_chunk *chunk;
	struct ocfs2_dquot *od = FUNC1(dquot);
	int offset;
	int status;
	u64 pcount;

	FUNC4(&FUNC2(lqinode)->ip_alloc_sem);
	chunk = FUNC8(sb, type, &offset);
	if (!chunk) {
		chunk = FUNC6(sb, type, &offset);
		if (FUNC0(chunk)) {
			status = FUNC3(chunk);
			goto out;
		}
	} else if (FUNC0(chunk)) {
		status = FUNC3(chunk);
		goto out;
	}
	od->dq_local_off = FUNC12(sb, chunk->qc_num, offset);
	od->dq_chunk = chunk;
	status = FUNC7(lqinode,
				     FUNC11(sb, chunk->qc_num, offset),
				     &od->dq_local_phys_blk,
				     &pcount,
				     NULL);

	/* Initialize dquot structure on disk */
	status = FUNC9(dquot);
	if (status < 0) {
		FUNC5(status);
		goto out;
	}

	/* Mark structure as allocated */
	status = FUNC10(lqinode, chunk->qc_headerbh, olq_alloc_dquot,
				 &offset);
	if (status < 0) {
		FUNC5(status);
		goto out;
	}
out:
	FUNC14(&FUNC2(lqinode)->ip_alloc_sem);
	return status;
}