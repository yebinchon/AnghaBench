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
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_dtime; int /*<<< orphan*/  i_suballoc_slot; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int ip_flags; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  INODE_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ OCFS2_DELETE_INODE_CREDITS ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int OCFS2_INODE_SKIP_ORPHAN_DIR ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int OCFS2_ORPHANED_FL ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int OCFS2_VALID_FL ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct ocfs2_dinode*) ; 
 struct inode* FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC22 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct inode*,struct buffer_head*,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC25 (struct ocfs2_super*,scalar_t__) ; 

__attribute__((used)) static int FUNC26(struct inode *inode,
			      struct buffer_head *di_bh,
			      struct inode *orphan_dir_inode,
			      struct buffer_head *orphan_dir_bh)
{
	int status;
	struct inode *inode_alloc_inode = NULL;
	struct buffer_head *inode_alloc_bh = NULL;
	handle_t *handle;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *) di_bh->b_data;

	inode_alloc_inode =
		FUNC17(osb, INODE_ALLOC_SYSTEM_INODE,
					    FUNC13(di->i_suballoc_slot));
	if (!inode_alloc_inode) {
		status = -ENOENT;
		FUNC14(status);
		goto bail;
	}

	FUNC9(inode_alloc_inode);
	status = FUNC18(inode_alloc_inode, &inode_alloc_bh, 1);
	if (status < 0) {
		FUNC10(inode_alloc_inode);

		FUNC14(status);
		goto bail;
	}

	handle = FUNC25(osb, OCFS2_DELETE_INODE_CREDITS +
				   FUNC23(inode->i_sb));
	if (FUNC1(handle)) {
		status = FUNC4(handle);
		FUNC14(status);
		goto bail_unlock;
	}

	if (!(FUNC2(inode)->ip_flags & OCFS2_INODE_SKIP_ORPHAN_DIR)) {
		status = FUNC22(osb, handle, orphan_dir_inode, inode,
					  orphan_dir_bh, false);
		if (status < 0) {
			FUNC14(status);
			goto bail_commit;
		}
	}

	/* set the inodes dtime */
	status = FUNC20(handle, FUNC0(inode), di_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC14(status);
		goto bail_commit;
	}

	di->i_dtime = FUNC7(FUNC12());
	di->i_flags &= FUNC6(~(OCFS2_VALID_FL | OCFS2_ORPHANED_FL));
	FUNC21(handle, di_bh);

	FUNC24(FUNC0(inode), di_bh);
	FUNC8(inode);

	status = FUNC16(handle, inode_alloc_inode,
				   inode_alloc_bh, di);
	if (status < 0)
		FUNC14(status);

bail_commit:
	FUNC15(osb, handle);
bail_unlock:
	FUNC19(inode_alloc_inode, 1);
	FUNC10(inode_alloc_inode);
	FUNC5(inode_alloc_bh);
bail:
	FUNC11(inode_alloc_inode);

	return status;
}