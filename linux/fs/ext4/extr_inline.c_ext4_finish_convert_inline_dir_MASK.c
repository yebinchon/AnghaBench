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
struct inode {TYPE_1__* i_sb; scalar_t__ i_size; } ;
struct ext4_dir_entry_tail {int dummy; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  inode; } ;
struct buffer_head {void* b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {scalar_t__ i_disksize; } ;
struct TYPE_3__ {scalar_t__ s_blocksize; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int EXT4_INLINE_DOTDOT_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 struct ext4_dir_entry_2* FUNC3 (struct inode*,struct ext4_dir_entry_2*,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC12(handle_t *handle,
					  struct inode *inode,
					  struct buffer_head *dir_block,
					  void *buf,
					  int inline_size)
{
	int err, csum_size = 0, header_size = 0;
	struct ext4_dir_entry_2 *de;
	void *target = dir_block->b_data;

	/*
	 * First create "." and ".." and then copy the dir information
	 * back to the block.
	 */
	de = (struct ext4_dir_entry_2 *)target;
	de = FUNC3(inode, de,
		inode->i_sb->s_blocksize, csum_size,
		FUNC8(((struct ext4_dir_entry_2 *)buf)->inode), 1);
	header_size = (void *)de - target;

	FUNC9((void *)de, buf + EXT4_INLINE_DOTDOT_SIZE,
		inline_size - EXT4_INLINE_DOTDOT_SIZE);

	if (FUNC2(inode->i_sb))
		csum_size = sizeof(struct ext4_dir_entry_tail);

	inode->i_size = inode->i_sb->s_blocksize;
	FUNC7(inode, inode->i_sb->s_blocksize);
	FUNC0(inode)->i_disksize = inode->i_sb->s_blocksize;
	FUNC6(dir_block->b_data,
			inline_size - EXT4_INLINE_DOTDOT_SIZE + header_size,
			inode->i_sb->s_blocksize - csum_size);

	if (csum_size)
		FUNC4(dir_block,
					    inode->i_sb->s_blocksize);
	FUNC10(dir_block);
	err = FUNC1(handle, inode, dir_block);
	if (err)
		return err;
	FUNC11(dir_block);
	return FUNC5(handle, inode);
}