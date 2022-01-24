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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct ocfs2_super {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INODE_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ocfs2_super*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 struct inode* FUNC7 (struct ocfs2_super*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ocfs2_super*,struct inode*,struct buffer_head*,scalar_t__,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long long) ; 

int FUNC12(struct ocfs2_super *osb, u64 blkno, int *res)
{
	int status;
	u64 group_blkno = 0;
	u16 suballoc_bit = 0, suballoc_slot = 0;
	struct inode *inode_alloc_inode;
	struct buffer_head *alloc_bh = NULL;

	FUNC11((unsigned long long)blkno);

	status = FUNC6(osb, blkno, &suballoc_slot,
					     &group_blkno, &suballoc_bit);
	if (status < 0) {
		FUNC4(ML_ERROR, "get alloc slot and bit failed %d\n", status);
		goto bail;
	}

	inode_alloc_inode =
		FUNC7(osb, INODE_ALLOC_SYSTEM_INODE,
					    suballoc_slot);
	if (!inode_alloc_inode) {
		/* the error code could be inaccurate, but we are not able to
		 * get the correct one. */
		status = -EINVAL;
		FUNC4(ML_ERROR, "unable to get alloc inode in slot %u\n",
		     (u32)suballoc_slot);
		goto bail;
	}

	FUNC1(inode_alloc_inode);
	status = FUNC8(inode_alloc_inode, &alloc_bh, 0);
	if (status < 0) {
		FUNC2(inode_alloc_inode);
		FUNC3(inode_alloc_inode);
		FUNC4(ML_ERROR, "lock on alloc inode on slot %u failed %d\n",
		     (u32)suballoc_slot, status);
		goto bail;
	}

	status = FUNC10(osb, inode_alloc_inode, alloc_bh,
					 group_blkno, blkno, suballoc_bit, res);
	if (status < 0)
		FUNC4(ML_ERROR, "test suballoc bit failed %d\n", status);

	FUNC9(inode_alloc_inode, 0);
	FUNC2(inode_alloc_inode);

	FUNC3(inode_alloc_inode);
	FUNC0(alloc_bh);
bail:
	if (status)
		FUNC5(status);
	return status;
}