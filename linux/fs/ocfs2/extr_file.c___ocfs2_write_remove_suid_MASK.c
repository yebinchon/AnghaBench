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
struct ocfs2_dinode {int /*<<< orphan*/  i_mode; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int S_ISGID ; 
 int S_ISUID ; 
 int S_IXGRP ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC10 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long long,int) ; 

__attribute__((used)) static int FUNC13(struct inode *inode,
				     struct buffer_head *bh)
{
	int ret;
	handle_t *handle;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	struct ocfs2_dinode *di;

	FUNC12(
			(unsigned long long)FUNC2(inode)->ip_blkno,
			inode->i_mode);

	handle = FUNC10(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC1(handle)) {
		ret = FUNC4(handle);
		FUNC6(ret);
		goto out;
	}

	ret = FUNC8(handle, FUNC0(inode), bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		FUNC6(ret);
		goto out_trans;
	}

	inode->i_mode &= ~S_ISUID;
	if ((inode->i_mode & S_ISGID) && (inode->i_mode & S_IXGRP))
		inode->i_mode &= ~S_ISGID;

	di = (struct ocfs2_dinode *) bh->b_data;
	di->i_mode = FUNC5(inode->i_mode);
	FUNC11(handle, inode, 0);

	FUNC9(handle, bh);

out_trans:
	FUNC7(osb, handle);
out:
	return ret;
}