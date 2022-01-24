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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ i_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int ENOENT ; 
 long EXT4_INLINE_DOTDOT_SIZE ; 
 int EXT4_MIN_INLINE_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*) ; 
 void* FUNC4 (struct inode*,struct ext4_iloc*) ; 
 int FUNC5 (struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*) ; 
 TYPE_1__* FUNC9 (struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int*) ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(handle_t *handle,
			     struct inode *dir,
			     struct ext4_dir_entry_2 *de_del,
			     struct buffer_head *bh,
			     int *has_inline_data)
{
	int err, inline_size, no_expand;
	struct ext4_iloc iloc;
	void *inline_start;

	err = FUNC5(dir, &iloc);
	if (err)
		return err;

	FUNC12(dir, &no_expand);
	if (!FUNC6(dir)) {
		*has_inline_data = 0;
		goto out;
	}

	if ((void *)de_del - ((void *)FUNC9(&iloc)->i_block) <
		EXT4_MIN_INLINE_DATA_SIZE) {
		inline_start = (void *)FUNC9(&iloc)->i_block +
					EXT4_INLINE_DOTDOT_SIZE;
		inline_size = EXT4_MIN_INLINE_DATA_SIZE -
				EXT4_INLINE_DOTDOT_SIZE;
	} else {
		inline_start = FUNC4(dir, &iloc);
		inline_size = FUNC3(dir) -
				EXT4_MIN_INLINE_DATA_SIZE;
	}

	FUNC0(bh, "get_write_access");
	err = FUNC7(handle, bh);
	if (err)
		goto out;

	err = FUNC2(handle, dir, de_del, bh,
					inline_start, inline_size, 0);
	if (err)
		goto out;

	FUNC10(dir, iloc.bh, inline_start, inline_size);
out:
	FUNC13(dir, &no_expand);
	if (FUNC14(err == 0))
		err = FUNC8(handle, dir);
	FUNC1(iloc.bh);
	if (err != -ENOENT)
		FUNC11(dir->i_sb, err);
	return err;
}