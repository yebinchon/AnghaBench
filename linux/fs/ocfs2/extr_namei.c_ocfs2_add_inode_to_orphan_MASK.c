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
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct ocfs2_dinode {int i_flags; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  ip_blkno; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_DIO_ORPHANED_FL ; 
 scalar_t__ OCFS2_DIO_ORPHAN_PREFIX_LEN ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_ADD_TO_ORPHAN_CREDITS ; 
 scalar_t__ OCFS2_ORPHAN_NAMELEN ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ocfs2_super*,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_dir_lookup_result*) ; 
 int FUNC12 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 
 int FUNC14 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct buffer_head*,char*,struct ocfs2_dir_lookup_result*,struct inode*,int) ; 
 int FUNC15 (struct ocfs2_super*,struct inode**,int /*<<< orphan*/ ,char*,struct ocfs2_dir_lookup_result*,int) ; 
 int /*<<< orphan*/ * FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int) ; 

int FUNC19(struct ocfs2_super *osb,
	struct inode *inode)
{
	char orphan_name[OCFS2_DIO_ORPHAN_PREFIX_LEN + OCFS2_ORPHAN_NAMELEN + 1];
	struct inode *orphan_dir_inode = NULL;
	struct ocfs2_dir_lookup_result orphan_insert = { NULL, };
	struct buffer_head *di_bh = NULL;
	int status = 0;
	handle_t *handle = NULL;
	struct ocfs2_dinode *di = NULL;

	status = FUNC12(inode, &di_bh, 1);
	if (status < 0) {
		FUNC8(status);
		goto bail;
	}

	di = (struct ocfs2_dinode *) di_bh->b_data;
	/*
	 * Another append dio crashed?
	 * If so, manually recover it first.
	 */
	if (FUNC18(di->i_flags & FUNC4(OCFS2_DIO_ORPHANED_FL))) {
		status = FUNC17(inode, di_bh, FUNC5(inode));
		if (status < 0) {
			if (status != -ENOSPC)
				FUNC8(status);
			goto bail_unlock_inode;
		}

		status = FUNC10(osb, inode, di_bh, 0, 0);
		if (status < 0) {
			FUNC8(status);
			goto bail_unlock_inode;
		}
	}

	status = FUNC15(osb, &orphan_dir_inode,
			FUNC1(inode)->ip_blkno,
			orphan_name,
			&orphan_insert,
			true);
	if (status < 0) {
		FUNC8(status);
		goto bail_unlock_inode;
	}

	handle = FUNC16(osb,
			OCFS2_INODE_ADD_TO_ORPHAN_CREDITS);
	if (FUNC0(handle)) {
		status = FUNC2(handle);
		goto bail_unlock_orphan;
	}

	status = FUNC14(osb, handle, inode, di_bh, orphan_name,
			&orphan_insert, orphan_dir_inode, true);
	if (status)
		FUNC8(status);

	FUNC9(osb, handle);

bail_unlock_orphan:
	FUNC13(orphan_dir_inode, 1);
	FUNC6(orphan_dir_inode);
	FUNC7(orphan_dir_inode);

	FUNC11(&orphan_insert);

bail_unlock_inode:
	FUNC13(inode, 1);
	FUNC3(di_bh);

bail:
	return status;
}