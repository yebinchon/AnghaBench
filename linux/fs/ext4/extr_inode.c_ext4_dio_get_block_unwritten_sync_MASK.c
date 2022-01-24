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
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_GET_BLOCKS_IO_CREATE_EXT ; 
 int /*<<< orphan*/  EXT4_STATE_DIO_UNWRITTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
		sector_t iblock, struct buffer_head *bh_result,	int create)
{
	int ret;

	/* We don't expect handle for direct IO */
	FUNC0(FUNC3());

	ret = FUNC2(inode, iblock, bh_result,
				   EXT4_GET_BLOCKS_IO_CREATE_EXT);

	/*
	 * Mark inode as having pending DIO writes to unwritten extents.
	 * ext4_direct_IO_write() checks this flag and converts extents to
	 * written.
	 */
	if (!ret && FUNC1(bh_result))
		FUNC4(inode, EXT4_STATE_DIO_UNWRITTEN);

	return ret;
}