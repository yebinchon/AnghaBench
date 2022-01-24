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
struct inode {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_unwritten; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_STATE_DIO_UNWRITTEN ; 
 unsigned short EXT_INIT_MAX_LEN ; 
 unsigned short EXT_UNWRITTEN_MAX_LEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC2 (struct ext4_extent*) ; 
 scalar_t__ FUNC3 (struct ext4_extent*) ; 
 scalar_t__ FUNC4 (struct ext4_extent*) ; 
 scalar_t__ FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct inode *inode, struct ext4_extent *ex1,
				struct ext4_extent *ex2)
{
	unsigned short ext1_ee_len, ext2_ee_len;

	if (FUNC3(ex1) != FUNC3(ex2))
		return 0;

	ext1_ee_len = FUNC2(ex1);
	ext2_ee_len = FUNC2(ex2);

	if (FUNC6(ex1->ee_block) + ext1_ee_len !=
			FUNC6(ex2->ee_block))
		return 0;

	/*
	 * To allow future support for preallocated extents to be added
	 * as an RO_COMPAT feature, refuse to merge to extents if
	 * this can result in the top bit of ee_len being set.
	 */
	if (ext1_ee_len + ext2_ee_len > EXT_INIT_MAX_LEN)
		return 0;
	/*
	 * The check for IO to unwritten extent is somewhat racy as we
	 * increment i_unwritten / set EXT4_STATE_DIO_UNWRITTEN only after
	 * dropping i_data_sem. But reserved blocks should save us in that
	 * case.
	 */
	if (FUNC3(ex1) &&
	    (FUNC5(inode, EXT4_STATE_DIO_UNWRITTEN) ||
	     FUNC1(&FUNC0(inode)->i_unwritten) ||
	     (ext1_ee_len + ext2_ee_len > EXT_UNWRITTEN_MAX_LEN)))
		return 0;
#ifdef AGGRESSIVE_TEST
	if (ext1_ee_len >= 4)
		return 0;
#endif

	if (FUNC4(ex1) + ext1_ee_len == FUNC4(ex2))
		return 1;
	return 0;
}