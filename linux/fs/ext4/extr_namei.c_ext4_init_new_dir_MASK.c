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
struct inode {int /*<<< orphan*/  i_ino; scalar_t__ i_size; TYPE_1__* i_sb; } ;
struct ext4_dir_entry_tail {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;
struct TYPE_2__ {unsigned int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXT4_STATE_MAY_INLINE_DATA ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct ext4_dir_entry_2*,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,unsigned int) ; 
 scalar_t__ FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 

__attribute__((used)) static int FUNC13(handle_t *handle, struct inode *dir,
			     struct inode *inode)
{
	struct buffer_head *dir_block = NULL;
	struct ext4_dir_entry_2 *de;
	ext4_lblk_t block = 0;
	unsigned int blocksize = dir->i_sb->s_blocksize;
	int csum_size = 0;
	int err;

	if (FUNC6(dir->i_sb))
		csum_size = sizeof(struct ext4_dir_entry_tail);

	if (FUNC9(inode, EXT4_STATE_MAY_INLINE_DATA)) {
		err = FUNC10(handle, dir, inode);
		if (err < 0 && err != -ENOSPC)
			goto out;
		if (!err)
			goto out;
	}

	inode->i_size = 0;
	dir_block = FUNC4(handle, inode, &block);
	if (FUNC1(dir_block))
		return FUNC2(dir_block);
	de = (struct ext4_dir_entry_2 *)dir_block->b_data;
	FUNC7(inode, de, blocksize, csum_size, dir->i_ino, 0);
	FUNC12(inode, 2);
	if (csum_size)
		FUNC8(dir_block, blocksize);

	FUNC0(dir_block, "call ext4_handle_dirty_metadata");
	err = FUNC5(handle, inode, dir_block);
	if (err)
		goto out;
	FUNC11(dir_block);
out:
	FUNC3(dir_block);
	return err;
}