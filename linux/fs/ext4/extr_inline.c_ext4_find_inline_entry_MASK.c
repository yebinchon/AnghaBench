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
struct inode {int dummy; } ;
struct ext4_iloc {struct buffer_head* bh; } ;
struct ext4_filename {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  xattr_sem; } ;
struct TYPE_3__ {scalar_t__ i_block; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int EXT4_INLINE_DOTDOT_SIZE ; 
 int EXT4_MIN_INLINE_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inode*) ; 
 void* FUNC4 (struct inode*,struct ext4_iloc*) ; 
 scalar_t__ FUNC5 (struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 TYPE_1__* FUNC7 (struct ext4_iloc*) ; 
 int FUNC8 (struct buffer_head*,void*,int,struct inode*,struct ext4_filename*,int /*<<< orphan*/ ,struct ext4_dir_entry_2**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct buffer_head *FUNC10(struct inode *dir,
					struct ext4_filename *fname,
					struct ext4_dir_entry_2 **res_dir,
					int *has_inline_data)
{
	int ret;
	struct ext4_iloc iloc;
	void *inline_start;
	int inline_size;

	if (FUNC5(dir, &iloc))
		return NULL;

	FUNC2(&FUNC0(dir)->xattr_sem);
	if (!FUNC6(dir)) {
		*has_inline_data = 0;
		goto out;
	}

	inline_start = (void *)FUNC7(&iloc)->i_block +
						EXT4_INLINE_DOTDOT_SIZE;
	inline_size = EXT4_MIN_INLINE_DATA_SIZE - EXT4_INLINE_DOTDOT_SIZE;
	ret = FUNC8(iloc.bh, inline_start, inline_size,
			      dir, fname, 0, res_dir);
	if (ret == 1)
		goto out_find;
	if (ret < 0)
		goto out;

	if (FUNC3(dir) == EXT4_MIN_INLINE_DATA_SIZE)
		goto out;

	inline_start = FUNC4(dir, &iloc);
	inline_size = FUNC3(dir) - EXT4_MIN_INLINE_DATA_SIZE;

	ret = FUNC8(iloc.bh, inline_start, inline_size,
			      dir, fname, 0, res_dir);
	if (ret == 1)
		goto out_find;

out:
	FUNC1(iloc.bh);
	iloc.bh = NULL;
out_find:
	FUNC9(&FUNC0(dir)->xattr_sem);
	return iloc.bh;
}