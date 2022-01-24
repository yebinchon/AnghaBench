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
struct ext4_extent {void* ee_len; int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {size_t p_depth; struct ext4_extent* p_ext; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_lblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXT4_EX_NOCACHE ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ EXT_MAX_BLOCKS ; 
 scalar_t__ FUNC2 (struct ext4_ext_path*) ; 
 int FUNC3 (struct ext4_ext_path*) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_ext_path*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC9 (struct ext4_extent*) ; 
 scalar_t__ FUNC10 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_extent*) ; 
 scalar_t__ FUNC12 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC13 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC14 (struct ext4_extent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,struct ext4_extent*) ; 
 struct ext4_ext_path* FUNC16 (struct inode*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int) ; 

int
FUNC24(handle_t *handle, struct inode *inode1,
		  struct inode *inode2, ext4_lblk_t lblk1, ext4_lblk_t lblk2,
		  ext4_lblk_t count, int unwritten, int *erp)
{
	struct ext4_ext_path *path1 = NULL;
	struct ext4_ext_path *path2 = NULL;
	int replaced_count = 0;

	FUNC0(!FUNC22(&FUNC1(inode1)->i_data_sem));
	FUNC0(!FUNC22(&FUNC1(inode2)->i_data_sem));
	FUNC0(!FUNC19(inode1));
	FUNC0(!FUNC19(inode2));

	*erp = FUNC5(inode1, lblk1, count);
	if (FUNC23(*erp))
		return 0;
	*erp = FUNC5(inode2, lblk2, count);
	if (FUNC23(*erp))
		return 0;

	while (count) {
		struct ext4_extent *ex1, *ex2, tmp_ex;
		ext4_lblk_t e1_blk, e2_blk;
		int e1_len, e2_len, len;
		int split = 0;

		path1 = FUNC16(inode1, lblk1, NULL, EXT4_EX_NOCACHE);
		if (FUNC2(path1)) {
			*erp = FUNC3(path1);
			path1 = NULL;
		finish:
			count = 0;
			goto repeat;
		}
		path2 = FUNC16(inode2, lblk2, NULL, EXT4_EX_NOCACHE);
		if (FUNC2(path2)) {
			*erp = FUNC3(path2);
			path2 = NULL;
			goto finish;
		}
		ex1 = path1[path1->p_depth].p_ext;
		ex2 = path2[path2->p_depth].p_ext;
		/* Do we have somthing to swap ? */
		if (FUNC23(!ex2 || !ex1))
			goto finish;

		e1_blk = FUNC21(ex1->ee_block);
		e2_blk = FUNC21(ex2->ee_block);
		e1_len = FUNC9(ex1);
		e2_len = FUNC9(ex2);

		/* Hole handling */
		if (!FUNC18(lblk1, e1_blk, e1_len) ||
		    !FUNC18(lblk2, e2_blk, e2_len)) {
			ext4_lblk_t next1, next2;

			/* if hole after extent, then go to next extent */
			next1 = FUNC12(path1);
			next2 = FUNC12(path2);
			/* If hole before extent, then shift to that extent */
			if (e1_blk > lblk1)
				next1 = e1_blk;
			if (e2_blk > lblk2)
				next2 = e2_blk;
			/* Do we have something to swap */
			if (next1 == EXT_MAX_BLOCKS || next2 == EXT_MAX_BLOCKS)
				goto finish;
			/* Move to the rightest boundary */
			len = next1 - lblk1;
			if (len < next2 - lblk2)
				len = next2 - lblk2;
			if (len > count)
				len = count;
			lblk1 += len;
			lblk2 += len;
			count -= len;
			goto repeat;
		}

		/* Prepare left boundary */
		if (e1_blk < lblk1) {
			split = 1;
			*erp = FUNC17(handle, inode1,
						&path1, lblk1, 0);
			if (FUNC23(*erp))
				goto finish;
		}
		if (e2_blk < lblk2) {
			split = 1;
			*erp = FUNC17(handle, inode2,
						&path2,  lblk2, 0);
			if (FUNC23(*erp))
				goto finish;
		}
		/* ext4_split_extent_at() may result in leaf extent split,
		 * path must to be revalidated. */
		if (split)
			goto repeat;

		/* Prepare right boundary */
		len = count;
		if (len > e1_blk + e1_len - lblk1)
			len = e1_blk + e1_len - lblk1;
		if (len > e2_blk + e2_len - lblk2)
			len = e2_blk + e2_len - lblk2;

		if (len != e1_len) {
			split = 1;
			*erp = FUNC17(handle, inode1,
						&path1, lblk1 + len, 0);
			if (FUNC23(*erp))
				goto finish;
		}
		if (len != e2_len) {
			split = 1;
			*erp = FUNC17(handle, inode2,
						&path2, lblk2 + len, 0);
			if (*erp)
				goto finish;
		}
		/* ext4_split_extent_at() may result in leaf extent split,
		 * path must to be revalidated. */
		if (split)
			goto repeat;

		FUNC0(e2_len != e1_len);
		*erp = FUNC8(handle, inode1, path1 + path1->p_depth);
		if (FUNC23(*erp))
			goto finish;
		*erp = FUNC8(handle, inode2, path2 + path2->p_depth);
		if (FUNC23(*erp))
			goto finish;

		/* Both extents are fully inside boundaries. Swap it now */
		tmp_ex = *ex1;
		FUNC14(ex1, FUNC13(ex2));
		FUNC14(ex2, FUNC13(&tmp_ex));
		ex1->ee_len = FUNC4(e2_len);
		ex2->ee_len = FUNC4(e1_len);
		if (unwritten)
			FUNC11(ex2);
		if (FUNC10(&tmp_ex))
			FUNC11(ex1);

		FUNC15(handle, inode2, path2, ex2);
		FUNC15(handle, inode1, path1, ex1);
		*erp = FUNC6(handle, inode2, path2 +
				      path2->p_depth);
		if (FUNC23(*erp))
			goto finish;
		*erp = FUNC6(handle, inode1, path1 +
				      path1->p_depth);
		/*
		 * Looks scarry ah..? second inode already points to new blocks,
		 * and it was successfully dirtied. But luckily error may happen
		 * only due to journal error, so full transaction will be
		 * aborted anyway.
		 */
		if (FUNC23(*erp))
			goto finish;
		lblk1 += len;
		lblk2 += len;
		replaced_count += len;
		count -= len;

	repeat:
		FUNC7(path1);
		FUNC20(path1);
		FUNC7(path2);
		FUNC20(path2);
		path1 = path2 = NULL;
	}
	return replaced_count;
}