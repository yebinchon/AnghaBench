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
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_check; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; int /*<<< orphan*/  b_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LOCAL_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  OCFS2_BH_IGNORE_CACHE ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_dinode*) ; 
 struct ocfs2_dinode* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_dinode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 struct inode* FUNC11 (struct ocfs2_super*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ocfs2_super*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

int FUNC15(struct ocfs2_super *osb,
				     int slot_num,
				     struct ocfs2_dinode **alloc_copy)
{
	int status = 0;
	struct buffer_head *alloc_bh = NULL;
	struct inode *inode = NULL;
	struct ocfs2_dinode *alloc;

	FUNC14(slot_num);

	*alloc_copy = NULL;

	inode = FUNC11(osb,
					    LOCAL_ALLOC_SYSTEM_INODE,
					    slot_num);
	if (!inode) {
		status = -EINVAL;
		FUNC8(status);
		goto bail;
	}

	FUNC2(inode);

	status = FUNC12(inode, &alloc_bh,
					     OCFS2_BH_IGNORE_CACHE);
	if (status < 0) {
		FUNC8(status);
		goto bail;
	}

	*alloc_copy = FUNC6(alloc_bh->b_size, GFP_KERNEL);
	if (!(*alloc_copy)) {
		status = -ENOMEM;
		goto bail;
	}
	FUNC7((*alloc_copy), alloc_bh->b_data, alloc_bh->b_size);

	alloc = (struct ocfs2_dinode *) alloc_bh->b_data;
	FUNC9(alloc);

	FUNC10(osb->sb, alloc_bh->b_data, &alloc->i_check);
	status = FUNC13(osb, alloc_bh, FUNC0(inode));
	if (status < 0)
		FUNC8(status);

bail:
	if (status < 0) {
		FUNC5(*alloc_copy);
		*alloc_copy = NULL;
	}

	FUNC1(alloc_bh);

	if (inode) {
		FUNC3(inode);
		FUNC4(inode);
	}

	if (status)
		FUNC8(status);
	return status;
}