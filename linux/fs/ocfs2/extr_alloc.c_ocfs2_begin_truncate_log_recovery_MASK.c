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
struct ocfs2_truncate_log {scalar_t__ tl_used; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct TYPE_2__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_check; TYPE_1__ id2; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; int /*<<< orphan*/  b_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_dinode*) ; 
 struct ocfs2_dinode* FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ocfs2_super*,int,struct inode**,struct buffer_head**) ; 
 int FUNC11 (struct ocfs2_super*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

int FUNC14(struct ocfs2_super *osb,
				      int slot_num,
				      struct ocfs2_dinode **tl_copy)
{
	int status;
	struct inode *tl_inode = NULL;
	struct buffer_head *tl_bh = NULL;
	struct ocfs2_dinode *di;
	struct ocfs2_truncate_log *tl;

	*tl_copy = NULL;

	FUNC12(slot_num);

	status = FUNC10(osb, slot_num, &tl_inode, &tl_bh);
	if (status < 0) {
		FUNC8(status);
		goto bail;
	}

	di = (struct ocfs2_dinode *) tl_bh->b_data;

	/* tl_bh is loaded from ocfs2_get_truncate_log_info().  It's
	 * validated by the underlying call to ocfs2_read_inode_block(),
	 * so any corruption is a code bug */
	FUNC0(!FUNC2(di));

	tl = &di->id2.i_dealloc;
	if (FUNC7(tl->tl_used)) {
		FUNC13(FUNC7(tl->tl_used));

		/*
		 * Assuming the write-out below goes well, this copy will be
		 * passed back to recovery for processing.
		 */
		*tl_copy = FUNC6(tl_bh->b_data, tl_bh->b_size, GFP_KERNEL);
		if (!(*tl_copy)) {
			status = -ENOMEM;
			FUNC8(status);
			goto bail;
		}

		/* All we need to do to clear the truncate log is set
		 * tl_used. */
		tl->tl_used = 0;

		FUNC9(osb->sb, tl_bh->b_data, &di->i_check);
		status = FUNC11(osb, tl_bh, FUNC1(tl_inode));
		if (status < 0) {
			FUNC8(status);
			goto bail;
		}
	}

bail:
	FUNC4(tl_inode);
	FUNC3(tl_bh);

	if (status < 0) {
		FUNC5(*tl_copy);
		*tl_copy = NULL;
		FUNC8(status);
	}

	return status;
}