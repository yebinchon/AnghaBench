#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ocfs2_super {scalar_t__ local_alloc_state; struct buffer_head* local_alloc_bh; int /*<<< orphan*/  osb_la_resmap; int /*<<< orphan*/  slot_num; scalar_t__ ocfs2_wq; int /*<<< orphan*/  la_enable_wq; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_size; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  GLOBAL_BITMAP_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOCAL_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 scalar_t__ OCFS2_LA_DISABLED ; 
 scalar_t__ OCFS2_LA_UNUSED ; 
 int /*<<< orphan*/  OCFS2_WINDOW_MOVE_CREDITS ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_dinode*) ; 
 struct ocfs2_dinode* FUNC10 (struct ocfs2_dinode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC14 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_dinode*,struct inode*,struct buffer_head*) ; 

void FUNC22(struct ocfs2_super *osb)
{
	int status;
	handle_t *handle;
	struct inode *local_alloc_inode = NULL;
	struct buffer_head *bh = NULL;
	struct buffer_head *main_bm_bh = NULL;
	struct inode *main_bm_inode = NULL;
	struct ocfs2_dinode *alloc_copy = NULL;
	struct ocfs2_dinode *alloc = NULL;

	FUNC4(&osb->la_enable_wq);
	if (osb->ocfs2_wq)
		FUNC5(osb->ocfs2_wq);

	if (osb->local_alloc_state == OCFS2_LA_UNUSED)
		goto out;

	local_alloc_inode =
		FUNC14(osb,
					    LOCAL_ALLOC_SYSTEM_INODE,
					    osb->slot_num);
	if (!local_alloc_inode) {
		status = -ENOENT;
		FUNC11(status);
		goto out;
	}

	osb->local_alloc_state = OCFS2_LA_DISABLED;

	FUNC19(&osb->osb_la_resmap);

	main_bm_inode = FUNC14(osb,
						    GLOBAL_BITMAP_SYSTEM_INODE,
						    OCFS2_INVALID_SLOT);
	if (!main_bm_inode) {
		status = -EINVAL;
		FUNC11(status);
		goto out;
	}

	FUNC6(main_bm_inode);

	status = FUNC15(main_bm_inode, &main_bm_bh, 1);
	if (status < 0) {
		FUNC11(status);
		goto out_mutex;
	}

	/* WINDOW_MOVE_CREDITS is a bit heavy... */
	handle = FUNC20(osb, OCFS2_WINDOW_MOVE_CREDITS);
	if (FUNC1(handle)) {
		FUNC11(FUNC2(handle));
		handle = NULL;
		goto out_unlock;
	}

	bh = osb->local_alloc_bh;
	alloc = (struct ocfs2_dinode *) bh->b_data;

	alloc_copy = FUNC10(alloc, bh->b_size, GFP_NOFS);
	if (!alloc_copy) {
		status = -ENOMEM;
		goto out_commit;
	}

	status = FUNC17(handle, FUNC0(local_alloc_inode),
					 bh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC11(status);
		goto out_commit;
	}

	FUNC12(alloc);
	FUNC18(handle, bh);

	FUNC3(bh);
	osb->local_alloc_bh = NULL;
	osb->local_alloc_state = OCFS2_LA_UNUSED;

	status = FUNC21(osb, handle, alloc_copy,
					  main_bm_inode, main_bm_bh);
	if (status < 0)
		FUNC11(status);

out_commit:
	FUNC13(osb, handle);

out_unlock:
	FUNC3(main_bm_bh);

	FUNC16(main_bm_inode, 1);

out_mutex:
	FUNC7(main_bm_inode);
	FUNC8(main_bm_inode);

out:
	FUNC8(local_alloc_inode);

	FUNC9(alloc_copy);
}