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
struct rb_root {int dummy; } ;
struct pnfs_block_layout {scalar_t__ bl_lwb; int /*<<< orphan*/  bl_ext_lock; int /*<<< orphan*/  bl_ext_ro; struct rb_root bl_ext_rw; } ;
struct pnfs_block_extent {scalar_t__ be_f_offset; scalar_t__ be_state; scalar_t__ be_tag; int /*<<< orphan*/  be_length; int /*<<< orphan*/  be_v_offset; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ EXTENT_WRITTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PNFS_BLOCK_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 struct pnfs_block_extent* FUNC3 (struct rb_root*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct pnfs_block_extent*,struct pnfs_block_extent*) ; 
 scalar_t__ FUNC5 (struct pnfs_block_extent*) ; 
 struct pnfs_block_extent* FUNC6 (struct pnfs_block_extent*) ; 
 struct pnfs_block_extent* FUNC7 (struct pnfs_block_extent*) ; 
 int FUNC8 (struct rb_root*,struct pnfs_block_extent*,scalar_t__) ; 
 struct pnfs_block_extent* FUNC9 (struct rb_root*,struct pnfs_block_extent*) ; 
 struct pnfs_block_extent* FUNC10 (struct rb_root*,struct pnfs_block_extent*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmp ; 

int
FUNC13(struct pnfs_block_layout *bl, sector_t start,
		sector_t len, u64 lwb)
{
	struct rb_root *root = &bl->bl_ext_rw;
	sector_t end = start + len;
	struct pnfs_block_extent *be;
	int err = 0;
	FUNC0(tmp);

	FUNC11(&bl->bl_ext_lock);
	/*
	 * First remove all COW extents or holes from written to range.
	 */
	err = FUNC2(&bl->bl_ext_ro, start, end, &tmp);
	if (err)
		goto out;

	/*
	 * Then mark all invalid extents in the range as written to.
	 */
	for (be = FUNC3(root, start); be; be = FUNC6(be)) {
		if (be->be_f_offset >= end)
			break;

		if (be->be_state != PNFS_BLOCK_INVALID_DATA || be->be_tag)
			continue;

		if (be->be_f_offset < start) {
			struct pnfs_block_extent *left = FUNC7(be);

			if (left && FUNC4(left, be)) {
				sector_t diff = start - be->be_f_offset;

				left->be_length += diff;

				be->be_f_offset += diff;
				be->be_v_offset += diff;
				be->be_length -= diff;
			} else {
				err = FUNC8(root, be, start);
				if (err)
					goto out;
			}
		}

		if (FUNC5(be) > end) {
			struct pnfs_block_extent *right = FUNC6(be);

			if (right && FUNC4(be, right)) {
				sector_t diff = end - be->be_f_offset;

				be->be_length -= diff;

				right->be_f_offset -= diff;
				right->be_v_offset -= diff;
				right->be_length += diff;
			} else {
				err = FUNC8(root, be, end);
				if (err)
					goto out;
			}
		}

		if (be->be_f_offset >= start && FUNC5(be) <= end) {
			be->be_tag = EXTENT_WRITTEN;
			be = FUNC9(root, be);
			be = FUNC10(root, be);
		}
	}
out:
	if (bl->bl_lwb < lwb)
		bl->bl_lwb = lwb;
	FUNC12(&bl->bl_ext_lock);

	FUNC1(&tmp);
	return err;
}