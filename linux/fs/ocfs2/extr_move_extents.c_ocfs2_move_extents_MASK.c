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
struct ocfs2_super {int dummy; } ;
struct ocfs2_move_extents_context {struct inode* inode; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_ctime; } ;
struct TYPE_3__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {TYPE_1__ i_ctime; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  ip_alloc_sem; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct buffer_head*,struct ocfs2_move_extents_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 scalar_t__ FUNC17 (struct ocfs2_super*) ; 
 scalar_t__ FUNC18 (struct ocfs2_super*) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC21 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int) ; 
 int /*<<< orphan*/ * FUNC23 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct ocfs2_move_extents_context *context)
{
	int status;
	handle_t *handle;
	struct inode *inode = context->inode;
	struct ocfs2_dinode *di;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);

	if (FUNC17(osb) || FUNC18(osb))
		return -EROFS;

	FUNC11(inode);

	/*
	 * This prevents concurrent writes from other nodes
	 */
	status = FUNC21(inode, 1);
	if (status) {
		FUNC13(status);
		goto out;
	}

	status = FUNC15(inode, &di_bh, 1);
	if (status) {
		FUNC13(status);
		goto out_rw_unlock;
	}

	/*
	 * rememer ip_xattr_sem also needs to be held if necessary
	 */
	FUNC10(&FUNC2(inode)->ip_alloc_sem);

	status = FUNC5(di_bh, context);

	FUNC25(&FUNC2(inode)->ip_alloc_sem);
	if (status) {
		FUNC13(status);
		goto out_inode_unlock;
	}

	/*
	 * We update ctime for these changes
	 */
	handle = FUNC23(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC1(handle)) {
		status = FUNC4(handle);
		FUNC13(status);
		goto out_inode_unlock;
	}

	status = FUNC19(handle, FUNC0(inode), di_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status) {
		FUNC13(status);
		goto out_commit;
	}

	di = (struct ocfs2_dinode *)di_bh->b_data;
	inode->i_ctime = FUNC9(inode);
	di->i_ctime = FUNC8(inode->i_ctime.tv_sec);
	di->i_ctime_nsec = FUNC7(inode->i_ctime.tv_nsec);
	FUNC24(handle, inode, 0);

	FUNC20(handle, di_bh);

out_commit:
	FUNC14(osb, handle);

out_inode_unlock:
	FUNC6(di_bh);
	FUNC16(inode, 1);
out_rw_unlock:
	FUNC22(inode, 1);
out:
	FUNC12(inode);

	return status;
}