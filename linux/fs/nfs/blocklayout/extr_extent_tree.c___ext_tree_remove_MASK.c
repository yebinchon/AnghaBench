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
struct rb_root {int dummy; } ;
struct pnfs_block_extent {scalar_t__ be_f_offset; scalar_t__ be_v_offset; scalar_t__ be_length; scalar_t__ be_state; int /*<<< orphan*/  be_list; int /*<<< orphan*/  be_node; int /*<<< orphan*/  be_device; int /*<<< orphan*/  be_tag; } ;
struct list_head {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ PNFS_BLOCK_NONE_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct rb_root*,struct pnfs_block_extent*,int) ; 
 struct pnfs_block_extent* FUNC1 (struct rb_root*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct pnfs_block_extent*) ; 
 struct pnfs_block_extent* FUNC3 (struct pnfs_block_extent*) ; 
 struct pnfs_block_extent* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct rb_root*) ; 

__attribute__((used)) static int
FUNC8(struct rb_root *root,
		sector_t start, sector_t end, struct list_head *tmp)
{
	struct pnfs_block_extent *be;
	sector_t len1 = 0, len2 = 0;
	sector_t orig_v_offset;
	sector_t orig_len;

	be = FUNC1(root, start);
	if (!be)
		return 0;
	if (be->be_f_offset >= end)
		return 0;

	orig_v_offset = be->be_v_offset;
	orig_len = be->be_length;

	if (start > be->be_f_offset)
		len1 = start - be->be_f_offset;
	if (FUNC2(be) > end)
		len2 = FUNC2(be) - end;

	if (len2 > 0) {
		if (len1 > 0) {
			struct pnfs_block_extent *new;

			new = FUNC4(sizeof(*new), GFP_ATOMIC);
			if (!new)
				return -ENOMEM;

			be->be_length = len1;

			new->be_f_offset = end;
			if (be->be_state != PNFS_BLOCK_NONE_DATA) {
				new->be_v_offset =
					orig_v_offset + orig_len - len2;
			}
			new->be_length = len2;
			new->be_state = be->be_state;
			new->be_tag = be->be_tag;
			new->be_device = FUNC6(be->be_device);

			FUNC0(root, new, true);
		} else {
			be->be_f_offset = end;
			if (be->be_state != PNFS_BLOCK_NONE_DATA) {
				be->be_v_offset =
					orig_v_offset + orig_len - len2;
			}
			be->be_length = len2;
		}
	} else {
		if (len1 > 0) {
			be->be_length = len1;
			be = FUNC3(be);
		}

		while (be && FUNC2(be) <= end) {
			struct pnfs_block_extent *next = FUNC3(be);

			FUNC7(&be->be_node, root);
			FUNC5(&be->be_list, tmp);
			be = next;
		}

		if (be && be->be_f_offset < end) {
			len1 = FUNC2(be) - end;
			be->be_f_offset = end;
			if (be->be_state != PNFS_BLOCK_NONE_DATA)
				be->be_v_offset += be->be_length - len1;
			be->be_length = len1;
		}
	}

	return 0;
}