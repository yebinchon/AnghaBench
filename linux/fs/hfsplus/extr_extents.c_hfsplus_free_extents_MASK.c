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
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct hfsplus_extent {scalar_t__ block_count; scalar_t__ start_block; } ;
struct TYPE_4__ {TYPE_1__* ext_tree; } ;
struct TYPE_3__ {int /*<<< orphan*/  tree_lock; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  EXTENT ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct super_block*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hfsplus_extent*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct super_block *sb,
				struct hfsplus_extent *extent,
				u32 offset, u32 block_nr)
{
	u32 count, start;
	int i;
	int err = 0;

	/* Mapping the allocation file may lock the extent tree */
	FUNC1(FUNC7(&FUNC0(sb)->ext_tree->tree_lock));

	FUNC6(extent);
	for (i = 0; i < 8; extent++, i++) {
		count = FUNC2(extent->block_count);
		if (offset == count)
			goto found;
		else if (offset < count)
			break;
		offset -= count;
	}
	/* panic? */
	return -EIO;
found:
	for (;;) {
		start = FUNC2(extent->start_block);
		if (count <= block_nr) {
			err = FUNC5(sb, start, count);
			if (err) {
				FUNC8("can't free extent\n");
				FUNC4(EXTENT, " start: %u count: %u\n",
					start, count);
			}
			extent->block_count = 0;
			extent->start_block = 0;
			block_nr -= count;
		} else {
			count -= block_nr;
			err = FUNC5(sb, start + count, block_nr);
			if (err) {
				FUNC8("can't free extent\n");
				FUNC4(EXTENT, " start: %u count: %u\n",
					start, count);
			}
			extent->block_count = FUNC3(count);
			block_nr = 0;
		}
		if (!block_nr || !i) {
			/*
			 * Try to free all extents and
			 * return only last error
			 */
			return err;
		}
		i--;
		extent--;
		count = FUNC2(extent->block_count);
	}
}