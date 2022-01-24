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
struct ocfs2_dinode {int /*<<< orphan*/  i_orphaned_slot; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int ip_flags; } ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_SKIP_ORPHAN_DIR ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ORPHAN_DIR_SYSTEM_INODE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct ocfs2_super*,int) ; 
 int FUNC10 (struct inode*,struct buffer_head*) ; 
 struct inode* FUNC11 (struct ocfs2_super*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 
 int FUNC14 (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*) ; 
 int FUNC15 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_super*,int) ; 
 int FUNC17 (struct ocfs2_super*,struct inode*,struct buffer_head*) ; 
 int FUNC18 (struct inode*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC19(struct inode *inode,
			    struct buffer_head *di_bh)
{
	int status, orphaned_slot = -1;
	struct inode *orphan_dir_inode = NULL;
	struct buffer_head *orphan_dir_bh = NULL;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *) di_bh->b_data;

	if (!(FUNC0(inode)->ip_flags & OCFS2_INODE_SKIP_ORPHAN_DIR)) {
		orphaned_slot = FUNC7(di->i_orphaned_slot);

		status = FUNC9(osb, orphaned_slot);
		if (status)
			return status;

		orphan_dir_inode = FUNC11(osb,
							       ORPHAN_DIR_SYSTEM_INODE,
							       orphaned_slot);
		if (!orphan_dir_inode) {
			status = -ENOENT;
			FUNC8(status);
			goto bail;
		}

		/* Lock the orphan dir. The lock will be held for the entire
		 * delete_inode operation. We do this now to avoid races with
		 * recovery completion on other nodes. */
		FUNC4(orphan_dir_inode);
		status = FUNC12(orphan_dir_inode, &orphan_dir_bh, 1);
		if (status < 0) {
			FUNC5(orphan_dir_inode);

			FUNC8(status);
			goto bail;
		}
	}

	/* we do this while holding the orphan dir lock because we
	 * don't want recovery being run from another node to try an
	 * inode delete underneath us -- this will result in two nodes
	 * truncating the same file! */
	status = FUNC17(osb, inode, di_bh);
	if (status < 0) {
		FUNC8(status);
		goto bail_unlock_dir;
	}

	/* Remove any dir index tree */
	if (FUNC2(inode->i_mode)) {
		status = FUNC10(inode, di_bh);
		if (status) {
			FUNC8(status);
			goto bail_unlock_dir;
		}
	}

	/*Free extended attribute resources associated with this inode.*/
	status = FUNC18(inode, di_bh);
	if (status < 0) {
		FUNC8(status);
		goto bail_unlock_dir;
	}

	status = FUNC15(inode, di_bh);
	if (status < 0) {
		FUNC8(status);
		goto bail_unlock_dir;
	}

	status = FUNC14(inode, di_bh, orphan_dir_inode,
				    orphan_dir_bh);
	if (status < 0)
		FUNC8(status);

bail_unlock_dir:
	if (FUNC0(inode)->ip_flags & OCFS2_INODE_SKIP_ORPHAN_DIR)
		return status;

	FUNC13(orphan_dir_inode, 1);
	FUNC5(orphan_dir_inode);
	FUNC3(orphan_dir_bh);
bail:
	FUNC6(orphan_dir_inode);
	FUNC16(osb, orphaned_slot);

	return status;
}