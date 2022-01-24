#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_7__ {int h_sync; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GLOBAL_BITMAP_SYSTEM_INODE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  OCFS2_WINDOW_MOVE_CREDITS ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*,TYPE_1__*) ; 
 struct inode* FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*) ; 
 int FUNC10 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 
 TYPE_1__* FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ocfs2_super*,TYPE_1__*,struct ocfs2_dinode*,struct inode*,struct buffer_head*) ; 

int FUNC14(struct ocfs2_super *osb,
					struct ocfs2_dinode *alloc)
{
	int status;
	handle_t *handle;
	struct buffer_head *main_bm_bh = NULL;
	struct inode *main_bm_inode;

	main_bm_inode = FUNC8(osb,
						    GLOBAL_BITMAP_SYSTEM_INODE,
						    OCFS2_INVALID_SLOT);
	if (!main_bm_inode) {
		status = -EINVAL;
		FUNC6(status);
		goto out;
	}

	FUNC3(main_bm_inode);

	status = FUNC10(main_bm_inode, &main_bm_bh, 1);
	if (status < 0) {
		FUNC6(status);
		goto out_mutex;
	}

	handle = FUNC12(osb, OCFS2_WINDOW_MOVE_CREDITS);
	if (FUNC0(handle)) {
		status = FUNC1(handle);
		handle = NULL;
		FUNC6(status);
		goto out_unlock;
	}

	/* we want the bitmap change to be recorded on disk asap */
	handle->h_sync = 1;

	status = FUNC13(osb, handle, alloc,
					  main_bm_inode, main_bm_bh);
	if (status < 0)
		FUNC6(status);

	FUNC7(osb, handle);

out_unlock:
	FUNC11(main_bm_inode, 1);

out_mutex:
	FUNC4(main_bm_inode);

	FUNC2(main_bm_bh);

	FUNC5(main_bm_inode);

out:
	if (!status)
		FUNC9(osb);
	if (status)
		FUNC6(status);
	return status;
}