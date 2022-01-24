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
struct inode {int i_blkbits; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int b_size; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int DIO_MAX_BLOCKS ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXT4_HT_MAP_BLOCKS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, sector_t iblock,
				struct buffer_head *bh_result, int flags)
{
	int dio_credits;
	handle_t *handle;
	int retries = 0;
	int ret;

	/* Trim mapping request to maximum we can map at once for DIO */
	if (bh_result->b_size >> inode->i_blkbits > DIO_MAX_BLOCKS)
		bh_result->b_size = DIO_MAX_BLOCKS << inode->i_blkbits;
	dio_credits = FUNC3(inode,
				      bh_result->b_size >> inode->i_blkbits);
retry:
	handle = FUNC4(inode, EXT4_HT_MAP_BLOCKS, dio_credits);
	if (FUNC0(handle))
		return FUNC1(handle);

	ret = FUNC2(inode, iblock, bh_result, flags);
	FUNC5(handle);

	if (ret == -ENOSPC && FUNC6(inode->i_sb, &retries))
		goto retry;
	return ret;
}