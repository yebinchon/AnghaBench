#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_size; int /*<<< orphan*/  i_ino; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  rec_len; scalar_t__ inode; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int i_disksize; } ;
struct TYPE_3__ {scalar_t__ i_block; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int EXT4_INLINE_DOTDOT_SIZE ; 
 int EXT4_MIN_INLINE_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct ext4_iloc*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,int) ; 
 TYPE_1__* FUNC5 (struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 

int FUNC8(handle_t *handle, struct inode *parent,
			       struct inode *inode)
{
	int ret, inline_size = EXT4_MIN_INLINE_DATA_SIZE;
	struct ext4_iloc iloc;
	struct ext4_dir_entry_2 *de;

	ret = FUNC3(inode, &iloc);
	if (ret)
		return ret;

	ret = FUNC4(handle, inode, inline_size);
	if (ret)
		goto out;

	/*
	 * For inline dir, we only save the inode information for the ".."
	 * and create a fake dentry to cover the left space.
	 */
	de = (struct ext4_dir_entry_2 *)FUNC5(&iloc)->i_block;
	de->inode = FUNC2(parent->i_ino);
	de = (struct ext4_dir_entry_2 *)((void *)de + EXT4_INLINE_DOTDOT_SIZE);
	de->inode = 0;
	de->rec_len = FUNC6(
				inline_size - EXT4_INLINE_DOTDOT_SIZE,
				inline_size);
	FUNC7(inode, 2);
	inode->i_size = FUNC0(inode)->i_disksize = inline_size;
out:
	FUNC1(iloc.bh);
	return ret;
}