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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_allocation_request {unsigned long len; unsigned int flags; int /*<<< orphan*/  goal; struct inode* inode; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
typedef  int /*<<< orphan*/  ar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned int EXT4_MB_DELALLOC_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ext4_allocation_request*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_allocation_request*,int /*<<< orphan*/ ,int) ; 

ext4_fsblk_t FUNC5(handle_t *handle, struct inode *inode,
				  ext4_fsblk_t goal, unsigned int flags,
				  unsigned long *count, int *errp)
{
	struct ext4_allocation_request ar;
	ext4_fsblk_t ret;

	FUNC4(&ar, 0, sizeof(ar));
	/* Fill with neighbour allocated blocks */
	ar.inode = inode;
	ar.goal = goal;
	ar.len = count ? *count : 1;
	ar.flags = flags;

	ret = FUNC3(handle, &ar, errp);
	if (count)
		*count = ar.len;
	/*
	 * Account for the allocated meta blocks.  We will never
	 * fail EDQUOT for metdata, but we do account for it.
	 */
	if (!(*errp) && (flags & EXT4_MB_DELALLOC_RESERVED)) {
		FUNC2(inode,
				FUNC0(FUNC1(inode->i_sb), ar.len));
	}
	return ret;
}