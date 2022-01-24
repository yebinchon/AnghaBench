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
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
struct ext4_filename {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int i_inline_size; } ;
struct TYPE_3__ {scalar_t__ i_block; } ;

/* Variables and functions */
 int ENOSPC ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int EXT4_INLINE_DOTDOT_SIZE ; 
 int EXT4_MIN_INLINE_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ext4_filename*,struct inode*,struct inode*,struct ext4_iloc*,void*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 void* FUNC4 (struct inode*,struct ext4_iloc*) ; 
 int FUNC5 (struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 TYPE_1__* FUNC8 (struct ext4_iloc*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int*) ; 

int FUNC12(handle_t *handle, struct ext4_filename *fname,
			      struct inode *dir, struct inode *inode)
{
	int ret, inline_size, no_expand;
	void *inline_start;
	struct ext4_iloc iloc;

	ret = FUNC5(dir, &iloc);
	if (ret)
		return ret;

	FUNC10(dir, &no_expand);
	if (!FUNC6(dir))
		goto out;

	inline_start = (void *)FUNC8(&iloc)->i_block +
						 EXT4_INLINE_DOTDOT_SIZE;
	inline_size = EXT4_MIN_INLINE_DATA_SIZE - EXT4_INLINE_DOTDOT_SIZE;

	ret = FUNC2(handle, fname, dir, inode, &iloc,
					inline_start, inline_size);
	if (ret != -ENOSPC)
		goto out;

	/* check whether it can be inserted to inline xattr space. */
	inline_size = FUNC0(dir)->i_inline_size -
			EXT4_MIN_INLINE_DATA_SIZE;
	if (!inline_size) {
		/* Try to use the xattr space.*/
		ret = FUNC9(handle, dir, &iloc);
		if (ret && ret != -ENOSPC)
			goto out;

		inline_size = FUNC0(dir)->i_inline_size -
				EXT4_MIN_INLINE_DATA_SIZE;
	}

	if (inline_size) {
		inline_start = FUNC4(dir, &iloc);

		ret = FUNC2(handle, fname, dir,
						inode, &iloc, inline_start,
						inline_size);

		if (ret != -ENOSPC)
			goto out;
	}

	/*
	 * The inline space is filled up, so create a new block for it.
	 * As the extent tree will be created, we have to save the inline
	 * dir first.
	 */
	ret = FUNC3(handle, dir, &iloc);

out:
	FUNC11(dir, &no_expand);
	FUNC7(handle, dir);
	FUNC1(iloc.bh);
	return ret;
}