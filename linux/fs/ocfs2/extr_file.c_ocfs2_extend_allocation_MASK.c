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
typedef  scalar_t__ u32 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_list; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_clusters; TYPE_1__ id2; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  enum ocfs2_alloc_restarted { ____Placeholder_ocfs2_alloc_restarted } ocfs2_alloc_restarted ;
struct TYPE_4__ {scalar_t__ ip_clusters; scalar_t__ ip_blkno; int /*<<< orphan*/  ip_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int RESTART_META ; 
 int RESTART_NONE ; 
 int RESTART_TRANS ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (struct ocfs2_super*,struct inode*,scalar_t__*,scalar_t__,int,struct buffer_head*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,int*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC22 (struct inode*,struct ocfs2_extent_tree*,scalar_t__,int /*<<< orphan*/ ,struct ocfs2_alloc_context**,struct ocfs2_alloc_context**) ; 
 int FUNC23 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC24 (struct ocfs2_super*) ; 
 int /*<<< orphan*/ * FUNC25 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (unsigned long long,unsigned long long,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__,scalar_t__,unsigned long long,scalar_t__,unsigned long long) ; 

__attribute__((used)) static int FUNC31(struct inode *inode, u32 logical_start,
				   u32 clusters_to_add, int mark_unwritten)
{
	int status = 0;
	int restart_func = 0;
	int credits;
	u32 prev_clusters;
	struct buffer_head *bh = NULL;
	struct ocfs2_dinode *fe = NULL;
	handle_t *handle = NULL;
	struct ocfs2_alloc_context *data_ac = NULL;
	struct ocfs2_alloc_context *meta_ac = NULL;
	enum ocfs2_alloc_restarted why = RESTART_NONE;
	struct ocfs2_super *osb = FUNC4(inode->i_sb);
	struct ocfs2_extent_tree et;
	int did_quota = 0;

	/*
	 * Unwritten extent only exists for file systems which
	 * support holes.
	 */
	FUNC0(mark_unwritten && !FUNC24(osb));

	status = FUNC23(inode, &bh);
	if (status < 0) {
		FUNC12(status);
		goto leave;
	}
	fe = (struct ocfs2_dinode *) bh->b_data;

restart_all:
	FUNC0(FUNC10(fe->i_clusters) != FUNC3(inode)->ip_clusters);

	FUNC19(&et, FUNC1(inode), bh);
	status = FUNC22(inode, &et, clusters_to_add, 0,
				       &data_ac, &meta_ac);
	if (status) {
		FUNC12(status);
		goto leave;
	}

	credits = FUNC15(osb->sb, &fe->id2.i_list);
	handle = FUNC25(osb, credits);
	if (FUNC2(handle)) {
		status = FUNC5(handle);
		handle = NULL;
		FUNC12(status);
		goto leave;
	}

restarted_transaction:
	FUNC29(
		(unsigned long long)FUNC3(inode)->ip_blkno,
		(unsigned long long)FUNC9(inode),
		FUNC10(fe->i_clusters), clusters_to_add,
		why, restart_func);

	status = FUNC7(inode,
			FUNC16(osb->sb, clusters_to_add));
	if (status)
		goto leave;
	did_quota = 1;

	/* reserve a write to the file entry early on - that we if we
	 * run out of credits in the allocation path, we can still
	 * update i_size. */
	status = FUNC20(handle, FUNC1(inode), bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC12(status);
		goto leave;
	}

	prev_clusters = FUNC3(inode)->ip_clusters;

	status = FUNC13(osb,
				      inode,
				      &logical_start,
				      clusters_to_add,
				      mark_unwritten,
				      bh,
				      handle,
				      data_ac,
				      meta_ac,
				      &why);
	if ((status < 0) && (status != -EAGAIN)) {
		if (status != -ENOSPC)
			FUNC12(status);
		goto leave;
	}
	FUNC26(handle, inode, 1);
	FUNC21(handle, bh);

	FUNC27(&FUNC3(inode)->ip_lock);
	clusters_to_add -= (FUNC3(inode)->ip_clusters - prev_clusters);
	FUNC28(&FUNC3(inode)->ip_lock);
	/* Release unused quota reservation */
	FUNC8(inode,
			FUNC16(osb->sb, clusters_to_add));
	did_quota = 0;

	if (why != RESTART_NONE && clusters_to_add) {
		if (why == RESTART_META) {
			restart_func = 1;
			status = 0;
		} else {
			FUNC0(why != RESTART_TRANS);

			status = FUNC14(handle, 1);
			if (status < 0) {
				/* handle still has to be committed at
				 * this point. */
				status = -ENOMEM;
				FUNC12(status);
				goto leave;
			}
			goto restarted_transaction;
		}
	}

	FUNC30(FUNC3(inode)->ip_blkno,
	     FUNC10(fe->i_clusters),
	     (unsigned long long)FUNC11(fe->i_size),
	     FUNC3(inode)->ip_clusters,
	     (unsigned long long)FUNC9(inode));

leave:
	if (status < 0 && did_quota)
		FUNC8(inode,
			FUNC16(osb->sb, clusters_to_add));
	if (handle) {
		FUNC17(osb, handle);
		handle = NULL;
	}
	if (data_ac) {
		FUNC18(data_ac);
		data_ac = NULL;
	}
	if (meta_ac) {
		FUNC18(meta_ac);
		meta_ac = NULL;
	}
	if ((!status) && restart_func) {
		restart_func = 0;
		goto restart_all;
	}
	FUNC6(bh);
	bh = NULL;

	return status;
}