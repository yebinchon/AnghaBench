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
struct super_block {int s_blocksize; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
struct TYPE_2__ {int i_disksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int ENOMEM ; 
 int FUNC0 (struct super_block*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ EXT_MAX_BLOCKS ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct inode*,int,scalar_t__) ; 
 int FUNC5 (struct inode*,int,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 

int FUNC7(handle_t *handle, struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	ext4_lblk_t last_block;
	int err = 0;

	/*
	 * TODO: optimization is possible here.
	 * Probably we need not scan at all,
	 * because page truncation is enough.
	 */

	/* we have to know where to truncate from in crash case */
	FUNC1(inode)->i_disksize = inode->i_size;
	err = FUNC6(handle, inode);
	if (err)
		return err;

	last_block = (inode->i_size + sb->s_blocksize - 1)
			>> FUNC0(sb);
retry:
	err = FUNC4(inode, last_block,
				    EXT_MAX_BLOCKS - last_block);
	if (err == -ENOMEM) {
		FUNC2();
		FUNC3(BLK_RW_ASYNC, HZ/50);
		goto retry;
	}
	if (err)
		return err;
	return FUNC5(inode, last_block, EXT_MAX_BLOCKS - 1);
}