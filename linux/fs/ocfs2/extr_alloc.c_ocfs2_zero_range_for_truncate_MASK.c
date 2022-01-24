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
typedef  scalar_t__ u64 ;
struct super_block {scalar_t__ s_blocksize_bits; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; struct super_block* i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned int OCFS2_EXT_UNWRITTEN ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct page** FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page**) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct inode*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC6 (struct inode*,scalar_t__,scalar_t__,struct page**,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,scalar_t__,scalar_t__,struct page**,int,scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC10(struct inode *inode, handle_t *handle,
				  u64 range_start, u64 range_end)
{
	int ret = 0, numpages;
	struct page **pages = NULL;
	u64 phys;
	unsigned int ext_flags;
	struct super_block *sb = inode->i_sb;

	/*
	 * File systems which don't support sparse files zero on every
	 * extend.
	 */
	if (!FUNC8(FUNC0(sb)))
		return 0;

	pages = FUNC2(FUNC7(sb),
			sizeof(struct page *), GFP_NOFS);
	if (pages == NULL) {
		ret = -ENOMEM;
		FUNC4(ret);
		goto out;
	}

	if (range_start == range_end)
		goto out;

	ret = FUNC5(inode,
					  range_start >> sb->s_blocksize_bits,
					  &phys, NULL, &ext_flags);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	/*
	 * Tail is a hole, or is marked unwritten. In either case, we
	 * can count on read and write to return/push zero's.
	 */
	if (phys == 0 || ext_flags & OCFS2_EXT_UNWRITTEN)
		goto out;

	ret = FUNC6(inode, range_start, range_end, pages,
				   &numpages);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	FUNC9(inode, range_start, range_end, pages,
				 numpages, phys, handle);

	/*
	 * Initiate writeout of the pages we zero'd here. We don't
	 * wait on them - the truncate_inode_pages() call later will
	 * do that for us.
	 */
	ret = FUNC1(inode->i_mapping, range_start,
				       range_end - 1);
	if (ret)
		FUNC4(ret);

out:
	FUNC3(pages);

	return ret;
}