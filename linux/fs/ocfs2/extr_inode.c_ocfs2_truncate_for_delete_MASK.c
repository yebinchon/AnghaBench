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
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {scalar_t__ i_clusters; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ocfs2_super*,struct inode*,struct buffer_head*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC11 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct ocfs2_super *osb,
				     struct inode *inode,
				     struct buffer_head *fe_bh)
{
	int status = 0;
	struct ocfs2_dinode *fe;
	handle_t *handle = NULL;

	fe = (struct ocfs2_dinode *) fe_bh->b_data;

	/*
	 * This check will also skip truncate of inodes with inline
	 * data and fast symlinks.
	 */
	if (fe->i_clusters) {
		if (FUNC10(inode))
			FUNC5(inode, 0);

		handle = FUNC11(osb, OCFS2_INODE_UPDATE_CREDITS);
		if (FUNC1(handle)) {
			status = FUNC2(handle);
			handle = NULL;
			FUNC4(status);
			goto out;
		}

		status = FUNC8(handle, FUNC0(inode),
						 fe_bh,
						 OCFS2_JOURNAL_ACCESS_WRITE);
		if (status < 0) {
			FUNC4(status);
			goto out;
		}

		FUNC3(inode, 0);

		status = FUNC9(handle, inode, fe_bh);
		if (status < 0) {
			FUNC4(status);
			goto out;
		}

		FUNC6(osb, handle);
		handle = NULL;

		status = FUNC7(osb, inode, fe_bh);
		if (status < 0)
			FUNC4(status);
	}

out:
	if (handle)
		FUNC6(osb, handle);
	return status;
}